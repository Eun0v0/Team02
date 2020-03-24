package com.my.myrooms.mem;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginFormFn(HttpServletResponse response, Model model) {
		return "loginForm";
	}

	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinFormFn(HttpServletResponse response, Model model) {
		return "joinForm";
	}

	@RequestMapping(value = "/joinComplete", method = RequestMethod.GET)
	public String joinCompleteFn(HttpServletRequest request, Model model) {
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

		System.out.println("aa");
		return "joinComplete";
	}

	@RequestMapping(value = "/dummy", method = RequestMethod.GET)
	public String dummy(HttpServletResponse response, Model model) {
		return "dummy";
	}

	@RequestMapping(value = "/selectID", method = RequestMethod.GET)
	public void selectID(HttpServletRequest request, HttpServletResponse response, Model model) {
		String sid = request.getParameter("id");
		customerDBHandle.selectID(sid);

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = customerDBHandle.selectID(sid);

			out.print(jsonStr);
			out.flush();
		} catch (IOException e) {
// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/loginConfirm", method = RequestMethod.GET)
	public String loginConfirm(HttpServletResponse response, Model model) {
		String id = "dojw";
		String pw = "qwe";
		
		return "mainMap";
	}

}