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
public class CrimeDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray crimeArr = new JSONArray();
		String sql="select * from crime";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				int guCode = rs.getInt("gucode");
				int crimeCount = rs.getInt("crimecount");
				String solRate = rs.getString("solrate");
				int score = rs.getInt("score");
				
				JSONObject crimeObj = new JSONObject();
			
				crimeObj.put("guCode", guCode);
				crimeObj.put("crimeCount", crimeCount);
				crimeObj.put("solRate", solRate);
				crimeObj.put("score", score);
				
				crimeArr.add(crimeObj);
			}
			rs.close();
			return crimeArr.toJSONString();
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
	
	public String getLocation() {
		JSONArray locArr = new JSONArray();
		String sql="select lati, logti, score from loccode l , crime c where l.gucode =c.gucode AND l.dongcode is NULL";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				double latitude = rs.getDouble("lati");
				double longitude = rs.getDouble("logti");
				int score = rs.getInt("score");
				
				JSONObject locObj = new JSONObject();
			
				locObj.put("latitude", latitude);
				locObj.put("longitude", longitude);
				locObj.put("score", score);
				
				locArr.add(locObj);
			}
			rs.close();
			System.out.println("size:" + locArr.size());
			return locArr.toJSONString();
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
