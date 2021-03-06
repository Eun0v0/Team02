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

import com.my.myrooms.test.CrimeDBHandle;
import com.my.myrooms.test.FineDustDBHandle;
import com.my.myrooms.test.ForeignerDBHandle;
import com.my.myrooms.test.NoiseDBHandle;
import com.my.myrooms.test.TrafficDBHandle;
import com.my.myrooms.test.WSafeZoneDBHandle;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MapController {
	@Autowired
	WSafeZoneDBHandle wSafeZoneDBHandle;
	
	@Autowired
	NoiseDBHandle noiseDBHandle;
	
	@Autowired
	FineDustDBHandle fineDustDBHandle;
	
	@Autowired
	CrimeDBHandle crimeDBHandle;
	
	@Autowired
	ForeignerDBHandle foreignerDBHandle;
	
	@Autowired
	TrafficDBHandle trafficDBHandle;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		log.info("Index.html");
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping(value = "/statMain")
	public String statMain(Locale locale, Model model) {
		log.info("statMain");
		
		return "statMain";
	}
	
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
	
	@RequestMapping(value = "/searchFavor", method = RequestMethod.GET)
	public void searchFavor(HttpServletResponse response, HttpServletRequest request, Model model) {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String favor = request.getParameter("favor");

		
		log.info("favor:" + favor + "\n");
		try {
			PrintWriter out = response.getWriter();
			String jsonStr = null;
			
			if(favor.equals("finedust")) {
				log.info("get noise locations");
				jsonStr = fineDustDBHandle.getLocation();
			} else if (favor.equals("noise")) {
				log.info("get noise locations");
				jsonStr = noiseDBHandle.getLocation();
			} else if (favor.equals("criminal")) {
				jsonStr = crimeDBHandle.getLocation();
			} else if (favor.equals("foreigner")) {
				jsonStr = foreignerDBHandle.getLocation();
			} else if (favor.equals("wsafezone")) {
				jsonStr = wSafeZoneDBHandle.makeJson();
			} else if (favor.equals("traffic")){
				jsonStr = trafficDBHandle.getLocation();
			} else {
				jsonStr = null;
			}
			
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
