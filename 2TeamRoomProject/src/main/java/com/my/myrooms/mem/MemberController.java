package com.my.myrooms.mem;

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
		String age = request.getParameter("age");
		String gu = request.getParameter("gu");
		String dong = request.getParameter("dong");
		String job = request.getParameter("job");
		String[] options = request.getParameterValues("options");

		for(String s : options) {
			System.out.println(s);
		}
		model.addAttribute("id", id);
		model.addAttribute("password", password);
		model.addAttribute("name", name);
		model.addAttribute("sex", sex);
		model.addAttribute("age", age);
		model.addAttribute("gu", gu);
		model.addAttribute("dong", dong);
		model.addAttribute("job", job);
		return "joinComplete";
	}
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginFormFn(HttpServletResponse response, Model model) {
		return "loginForm";
	}
//	
//	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
//	public String joinFormFn(HttpServletResponse response, Model model) {
//		return "joinForm";
//	}

}
