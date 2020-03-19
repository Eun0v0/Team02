package com.my.myroom.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.myroom.HomeController;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */

@Slf4j
@Controller
public class TestController {
	
	@Autowired
	PSeoulDBHandle pSeoulDBHandle;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/testView", method = RequestMethod.GET)
	public String testView(Locale locale, Model model) {
		
		return "testView";
	}
	
	@RequestMapping(value = "/testPSeoulView", method = RequestMethod.GET)
	public void testPSeoulView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = pSeoulDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
