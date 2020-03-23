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
public class InsuranceDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray insuranceArr = new JSONArray();
		String sql="select * from insurance";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				String insuranceIndex = rs.getString("insuranceIndex");
				String insuranceName = rs.getString("insuranceName");
				String category = rs.getString("category");
				String ages = rs.getString("ages");
				String sex = rs.getString("sex");
				String imgName = rs.getString("imgName");
				
				JSONObject InsuranceObj = new JSONObject();
			
				InsuranceObj.put("insuranceIndex", insuranceIndex);
				InsuranceObj.put("insuranceName", insuranceName);
				InsuranceObj.put("category", category);
				InsuranceObj.put("ages", ages);
				InsuranceObj.put("sex", sex);
				InsuranceObj.put("imgName", imgName);
				
				insuranceArr.add(InsuranceObj);
			}
			rs.close();
			return insuranceArr.toJSONString();
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
