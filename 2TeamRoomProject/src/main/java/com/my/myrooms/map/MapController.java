package com.my.myrooms.map;

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

import com.my.myrooms.test.WSafeZoneDBHandle;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MapController {
	@Autowired
	WSafeZoneDBHandle wSafeZoneDBHandle;
	
	@RequestMapping(value = "/mainMap", method = RequestMethod.GET)
	public String mainMap(Locale locale, Model model) {
		//log.info("Welcome home! The client locale is {}.", locale);
		
		log.info("Map");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "mainMap";
	}
	
	@RequestMapping(value = "/showWSafeZone", method = RequestMethod.GET)
	public void showWSafeZone(HttpServletResponse response, HttpServletRequest request, Model model) {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = wSafeZoneDBHandle.makeJson();
			
			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
	}
}