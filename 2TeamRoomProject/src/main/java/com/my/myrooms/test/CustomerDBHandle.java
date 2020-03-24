package com.my.myrooms.test;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDBHandle {
	@Autowired
	DataSource dataSource;
	
	public String makeJson(){
		JSONArray customerArr = new JSONArray();
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql="select * from customer";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				String id = rs.getString("id");
				String password = rs.getString("password");
				String sex = rs.getString("sex");
				int age = rs.getInt("age");
				String gu = rs.getString("gu");
				String dong = rs.getString("dong");
				String job = rs.getString("job");
				
				JSONObject customerObj = new JSONObject();
			
				customerObj.put("id", id);
				customerObj.put("password", password);
				customerObj.put("sex", sex);
				customerObj.put("age", age);
				customerObj.put("gu", gu);
				customerObj.put("dong", dong);
				customerObj.put("job", job);
				
				customerArr.add(customerObj);
			}
			rs.close();
			return customerArr.toJSONString();
			
		}catch(Exception ex) {
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
	
	public String insertCustomer(String id, String password, String name, String sex, int age, String gu, String dong,
			String job) {
		String sql = "insert into Customer values(?, ?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, sex);
			pstmt.setInt(5, age);
			pstmt.setString(6, gu);
			pstmt.setString(7, dong);
			pstmt.setString(8, job);
			pstmt.execute();

			System.out.println("추가 성공");
			return "add success";
		} catch (Exception e) {
// TODO: handle exception
			System.out.println("추가 실패");
			return "add fail" + e.getMessage();
		}
	}

	public String selectID(String sid) {
		JSONArray customerArr = new JSONArray();
		String sql = "select id from customer where id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sid);
			rs = pstmt.executeQuery();

			while (rs.next()) {				
				JSONObject customerObj = new JSONObject();
				String id = rs.getString("id");
				customerObj.put("id", id);
				customerArr.add(customerObj);
			}
			rs.close();
			return customerArr.toJSONString();

		} catch (Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
