package com.my.myrooms.searchlog;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
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
	CustomerModel customer = new CustomerModel("eun0v0", "1234", "W", 20, "GwanAk", "BongCheon", "Student");	
	
	@RequestMapping(value = "/searchResult", method = RequestMethod.GET)
	public String searchResult(HttpServletRequest request, Model model) {
		
		String[] searchKey = request.getParameterValues("searchKey");
		searchLogApi.saveLog(searchKey, customer);
		
		ArrayList<guScoreModel> guScoreList = searchLogApi.calScore(customer.getId(), searchKey);
		model.addAttribute("guScoreList", guScoreList);

		return "searchResult";
	}
	
	
	@RequestMapping(value = "/searchMain", method = RequestMethod.GET)
	public String searchMain(Locale locale, Model model) {
		System.out.println("~~~~~호이호이호이~~~~~");
		return "searchMain";
	}
}
