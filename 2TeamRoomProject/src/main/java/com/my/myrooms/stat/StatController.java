package com.my.myrooms.stat;

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


import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class StatController {
	@Autowired
	private StatApiImpl statApiImpl;
	
	@RequestMapping(value = "/statMain", method = RequestMethod.GET)
	public String statMain(HttpServletResponse response, Model model) {
		
		log.info("statMain");
	
		return "statMain";
	}
	
	@RequestMapping(value = "/statResult", method = RequestMethod.GET)
	public void statResult(HttpServletResponse response, HttpServletRequest request, Model model) {
		log.info("statResult");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		String statKey = request.getParameter("selectOption");
		String jsonStr = null;
		
		jsonStr = statApiImpl.statByOption(statKey);
		try {
			PrintWriter out = response.getWriter();
			out.print(jsonStr);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}