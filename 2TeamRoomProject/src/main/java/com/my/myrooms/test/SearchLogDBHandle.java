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
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "select * from searchlog";
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString("id");
				String sex = rs.getString("sex");
				int age = rs.getInt("age");
				String job = rs.getString("job");
				String gu = rs.getString("gu");
				String dong = rs.getString("dong");
				String searchOption = rs.getString("searchOption");
				String searchDate = rs.getString("searchDate");
				
				JSONObject searchLogObj = new JSONObject();

				searchLogObj.put("id", id);
				searchLogObj.put("sex", sex);
				searchLogObj.put("age", age);
				searchLogObj.put("job", job);
				searchLogObj.put("gu", gu);
				searchLogObj.put("dong", dong);
				searchLogObj.put("searchOption", searchOption);
				searchLogObj.put("searchDate", searchDate);

				searchLogArr.add(searchLogObj);
			}
			rs.close();
			return searchLogArr.toJSONString();

		} catch (Exception ex) {
			return "Error: " + ex.getStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public void insertLog(String[] searchArr, CustomerModel customer) {
		
		Connection conn = null;
		
		try {
			conn = dataSource.getConnection();
	
			for (String str : searchArr) {
				String sql = "INSERT INTO searchlog VALUES(?,?,?,?,?,?,?,sysdate)";
				
				PreparedStatement pstmt = null;
				pstmt.setString(1, customer.getId());
				pstmt.setString(2, customer.getSex());
				pstmt.setInt(3, customer.getAge());
				pstmt.setString(4, customer.getJob());
				pstmt.setString(5, customer.getGu());
				pstmt.setString(6, customer.getDong());
				pstmt.setString(7, str);
				pstmt.execute();
				
				pstmt = conn.prepareStatement(sql);
				pstmt.executeQuery();
			}
			
		} catch (Exception ex) {
			ex.getStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
