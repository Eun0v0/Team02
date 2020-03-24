package com.my.myrooms.test;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.myrooms.join.CustomerModel;

@Repository
public class SearchLogDBHandle {
	@Autowired
	DataSource dataSource;

	public String makeJson() {
		JSONArray searchLogArr = new JSONArray();
		String sql = "select * from searchlog";
		ResultSet rs = null;

		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString("id");
				String sex = rs.getString("sex");
				int age = rs.getInt("age");
				String job = rs.getString("job");
				Date searchDate = rs.getDate("searchDate");
				String gu = rs.getString("gu");
				String dong = rs.getString("dong");
				String searchOption = rs.getString("searchOption");
				

				JSONObject searchLogObj = new JSONObject();

				searchLogObj.put("id", id);
				searchLogObj.put("sex", sex);
				searchLogObj.put("age", age);
				searchLogObj.put("job", job);
				searchLogObj.put("searchDate", searchDate);
				searchLogObj.put("gu", gu);
				searchLogObj.put("dong", dong);
				searchLogObj.put("searchOption", searchOption);

				searchLogArr.add(searchLogObj);
			}
			rs.close();
			return searchLogArr.toJSONString();

		} catch (Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
	
	public void insertLog(String[] searchArr, CustomerModel customer) {

		try {
			Connection conn = dataSource.getConnection();
			String sql = "INSERT INTO searchlog VALUES(?,?,?,?,?,?,?,sysdate)";

			for (String key : searchArr) {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, customer.getId());
				pstmt.setInt(2, customer.getAge());
				pstmt.setString(3, customer.getSex());
				pstmt.setString(4, customer.getJob());
				pstmt.setString(5, customer.getGu());
				pstmt.setString(6, customer.getDong());
				pstmt.setString(7, key);
				pstmt.execute();

				System.out.println(sql);
			}
			conn.close();
			System.out.println("검색Log Insert 성공");

		} catch (Exception e) {
			System.out.println("검색Log Insert 실패");
		}
	}
	

}
