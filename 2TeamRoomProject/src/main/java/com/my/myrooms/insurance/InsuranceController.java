package com.my.myrooms.insurance;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.myrooms.map.MapController;
import com.my.myrooms.test.InsuranceDBHandle;


import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class InsuranceController {
	@Autowired
	InsuranceDBHandle insurnaceDBHandle;
	
	@RequestMapping(value = "/insuranceManage", method = RequestMethod.GET)
	public String insuranceManage(Locale locale, Model model) {
		//log.info("Welcome home! The client locale is {}.", locale);
		
		log.info("insuranceManage");
		
		return "insurance/insuranceManage";
	}
	
	@RequestMapping(value = "/selectInsurance", method = RequestMethod.GET)
	public void insuranceManage(HttpServletResponse response, HttpServletRequest request, Model model) {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = insurnaceDBHandle.makeJson();
			
			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
	}
	
	@RequestMapping(value = "/deleteInsurance", method = RequestMethod.GET)
	public void deleteInsurance(HttpServletResponse response, HttpServletRequest request, Model model) {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		String name = request.getParameter("name");
		insurnaceDBHandle.deleteInsurance(name);
	}
}
