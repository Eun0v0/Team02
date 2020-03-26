package com.my.myrooms.searchlog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.myrooms.join.CustomerModel;
import com.my.myrooms.test.SearchLogDBHandle;
import com.my.myrooms.test.WSafeZoneScoreModel;

@Controller
public class SearchLogController {
		
	@Autowired
	private DataSource dataSource;
	@Autowired
	private SearchLogApi searchLogApi;
	
	//현재 접속중인 회원 정보
	CustomerModel customer = new CustomerModel("jjparson", "1234", "W", 20, "GwanAk", "BongCheon", "Student");	
	
	@RequestMapping(value = "/searchResult", method = RequestMethod.GET)
	public String searchResult(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String[] searchKey = request.getParameterValues("searchKey");
		searchLogApi.saveLog(searchKey, customer);
		
		//ArrayList<GuScoreModel> guScoreList = searchLogApi.calScore(customer.getId(), searchKey);
		//model.addAttribute("guScoreList", guScoreList);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String jsonStr = searchLogApi.calScore(customer.getId(), searchKey);
		
		try {
			PrintWriter out = response.getWriter();
			
			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
		model.addAttribute("guScoreList", jsonStr);
		
		return "searchResult";
	}
	
	
	@RequestMapping(value = "/searchMain", method = RequestMethod.GET)
	public String searchMain(Locale locale, Model model) {
		System.out.println("~~~~~호이호이호이~~~~~");
		return "searchMain";
	}
	
	@RequestMapping(value = "/recommendMain", method = RequestMethod.GET)
	public String recommendMain(Locale locale, Model model) {
		System.out.println("~~~~~호이호이호이~~~~~");
		return "recommendMain";
	}
	
	@RequestMapping(value = "/recommendResult", method = RequestMethod.GET)
	public void recommendResult(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		/*
		 * String searchKeyTemp = request.getParameter("searchKey"); String[] searchKey
		 * = searchKeyTemp.split(",");
		 */
		
		String[] searchKey = request.getParameterValues("searchKey");
		searchLogApi.saveLog(searchKey, customer);
		
		//ArrayList<GuScoreModel> guScoreList = searchLogApi.calScore(customer.getId(), searchKey);
		//model.addAttribute("guScoreList", guScoreList);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String jsonStr = searchLogApi.calScore(customer.getId(), searchKey);
		
		try {
			PrintWriter out = response.getWriter();
			
			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		
		model.addAttribute("guScoreList", jsonStr);
		
	}
}
