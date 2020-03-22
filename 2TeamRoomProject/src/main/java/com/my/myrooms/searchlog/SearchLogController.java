package com.my.myrooms.searchlog;

import java.sql.Connection;
import java.sql.PreparedStatement;
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

@Controller
public class SearchLogController {
		
	@Autowired
	DataSource dataSource;
	@Autowired
	SearchLogDBHandle searchLogDBHandle;
	
	//현재 접속중인 회원 정보
	CustomerModel customer = new CustomerModel("jjparson", "1234", "W", 20, "GwanAk", "BonCheon", "Student");

	@RequestMapping(value = "/saveLog", method = RequestMethod.GET)
	public void saveLog(HttpServletRequest request, Model model) {
		
		String[] searchKey = request.getParameterValues("searchKey");
		
		try {
			Connection conn = dataSource.getConnection();
			String sql = "insert into searchlog values(?,?,?,?,?,?,?,sysdate)";
			
			for (String key : searchKey) {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, customer.getId());
				pstmt.setInt(2, customer.getAge());
				pstmt.setString(3, customer.getSex());
				pstmt.setString(4, customer.getJob());
				pstmt.setString(5, customer.getGu());
				pstmt.setString(6, customer.getDong());
				pstmt.setString(7, key);
				pstmt.execute();	
			
			}
			conn.close();
			System.out.println("검색Log Insert 성공");
			
		} catch (Exception e) {
			System.out.println("검색Log Insert 실패");
		}
	}
	
	@RequestMapping(value = "/searchMain", method = RequestMethod.GET)
	public String searchMain(Locale locale, Model model) {
		
		return "searchMain";
	}
}
