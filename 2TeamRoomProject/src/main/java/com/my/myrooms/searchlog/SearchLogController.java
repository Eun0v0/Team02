package com.my.myrooms.searchlog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.my.myrooms.test.CustomerDBHandle;
import com.my.myrooms.test.SearchLogDBHandle;
import com.my.myrooms.test.WSafeZoneScoreModel;

@Controller
public class SearchLogController {
		
	@Autowired
	private DataSource dataSource;
	@Autowired
	private SearchLogApi searchLogApi;
	@Autowired
	private CustomerDBHandle customerDBHandle;
	
	//현재 접속중인 회원 정보
	//CustomerModel customer = new CustomerModel("jjparson", "1234", "W", 20, "GwanAk", "BongCheon", "Student");	
	CustomerModel customer;
	
	@RequestMapping(value = "/searchResult", method = RequestMethod.GET)
	public String searchResult(HttpServletRequest request, HttpServletResponse response, Model model) {
		String[] searchKey = request.getParameterValues("searchKey");
		customer = new CustomerModel("jjparson", "1234", "W", 20, "GwanAk", "BongCheon", "Student");	
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
	
	@RequestMapping(value = "/insRecommendResult", method = RequestMethod.GET)
	public void insRecommendResult(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String[] searchKey = request.getParameterValues("searchKey");

		ArrayList<String> cusArray = customerDBHandle.getCustomerInfoAll(id);
		String cid = cusArray.get(0);
		String pwd = cusArray.get(1);
		String name = cusArray.get(2);
		String sex = cusArray.get(3);
		int age = Integer.parseInt(cusArray.get(4));
		String gu = cusArray.get(5);
		String dong = cusArray.get(6);
		String job =cusArray.get(7);
		
		//-----성별 처리
		String resultSex ="";
		if(sex.equals("여성"))
			resultSex = "W";
		else
			resultSex = "M";

		//-----나이계산
		SimpleDateFormat f = new SimpleDateFormat("yyyy");
		Date time = new Date();
		
		String time1 = f.format(time);
		int tempAge = age/10000;
		
		int resultAge = Integer.parseInt(time1) - tempAge;
		
		//----직업 처리
		String resultJob ="";
		if(job.equals("무직"))
			resultJob = "JobSeeker";
		else if(job.equals("학생"))
			resultJob = "Student";
		else if(job.equals("직장인"))
			resultJob = "Worker";
		else
			resultJob = "Store";
		
		customer = new CustomerModel(cid, pwd, resultSex, resultAge, gu, dong, resultJob);	
		
		searchLogApi.saveLog(searchKey, customer);
		
		String jsonStr = searchLogApi.calScore(customer.getId(), searchKey);
		System.out.println(customer.getId());
		
		//System.out.println(jsonStr);
		
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
		
		//model.addAttribute("guScoreList", jsonStr);
		
	}
}
