package com.my.myrooms.test;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray customerArr = new JSONArray();
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
		}
	}
}
