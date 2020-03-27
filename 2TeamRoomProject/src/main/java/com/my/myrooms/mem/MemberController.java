package com.my.myrooms.mem;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.my.myrooms.test.CusOptionDBHandle;
import com.my.myrooms.test.CustomerDBHandle;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class MemberController {

	@Autowired
	CustomerDBHandle customerDBHandle;
	@Autowired
	CusOptionDBHandle cusOptionDBHandle;

	HttpSession session;
	
	@RequestMapping(value = "/loginForm")
	public String loginForm(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "loginForm";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "logout";
	}
	
	@RequestMapping(value = "/profile")
	public String profile(HttpServletRequest request, HttpServletResponse response, Model model) {
		return "profile";
	}

	@RequestMapping(value = "/joinForm")
	public String joinFormFn(HttpServletResponse response, Model model) {
		return "joinForm";
	}

	@RequestMapping(value = "/joinComplete")
	public String joinCompleteFn(HttpServletRequest request, Model model, final RedirectAttributes redirectAttributes) {
		try {
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			String sex = request.getParameter("sex");
			int age = Integer.parseInt(request.getParameter("age"));
			String gu = request.getParameter("gu");
			String dong = request.getParameter("dong");
			String job = request.getParameter("job");

			customerDBHandle.makeJson();
			customerDBHandle.insertCustomer(id, password, name, sex, age, gu, dong, job);

			String[] options = request.getParameterValues("option");
			cusOptionDBHandle.makeJson();

			for (String s : options)
				cusOptionDBHandle.insertCusOption(id, s);

			model.addAttribute("id", id);
			model.addAttribute("password", password);
			model.addAttribute("name", name);
			model.addAttribute("sex", sex);
			model.addAttribute("age", age);
			model.addAttribute("gu", gu);
			model.addAttribute("dong", dong);
			model.addAttribute("job", job);

			return "joinComplete";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msg", "login Error :" + e.getMessage());
			return "redirect:/joinForm";
		}
	}

	@RequestMapping(value = "/selectID")
	public void selectID(HttpServletRequest request, HttpServletResponse response, Model model) {
		try {
			String sid = request.getParameter("id");
			customerDBHandle.selectID(sid);

			PrintWriter out = response.getWriter();
			String jsonStr = customerDBHandle.selectID(sid);

			out.print(jsonStr);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/confirmID")
	public String confirmID(HttpServletRequest request, HttpServletResponse response, Model model, final RedirectAttributes redirectAttributes) {
		try {
			request.setCharacterEncoding("utf-8");

			String sid = request.getParameter("id");
			String spwd = request.getParameter("password");

			System.out.println(sid);
			System.out.println(spwd);
			PrintWriter out = response.getWriter();
			String result = customerDBHandle.confirmID(sid, spwd);
			

			if (result == "OK") {
				session = request.getSession();
				ArrayList<String> cusInfo = customerDBHandle.getCustomerInfoAll(sid);
				
				session.setAttribute("id", cusInfo.get(0));
				session.setAttribute("name", cusInfo.get(2));
				session.setAttribute("sex", cusInfo.get(3));
				session.setAttribute("age", cusInfo.get(4));
				session.setAttribute("gu", cusInfo.get(5));
				session.setAttribute("dong", cusInfo.get(6));
				session.setAttribute("job", cusInfo.get(7));
				
				redirectAttributes.addFlashAttribute("msg", "");
				return "redirect:/mainMap";
			} else {
				redirectAttributes.addFlashAttribute("msg", "Not Correct ID or Password");
				return "redirect:/loginForm";
			}

		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("msg", "login Error :" + e.getMessage());
			return "redirect:/loginForm";
		}

	}
}
