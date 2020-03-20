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
public class FineDustDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray fineDustArr = new JSONArray();
		String sql="select * from finedust";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				int guCode = rs.getInt("guCode");
				int fineDust = rs.getInt("finedust");
				int ultraFineDust = rs.getInt("ultrafinedust");
				int score = rs.getInt("score");
				
				JSONObject fineDustObj = new JSONObject();
			
				fineDustObj.put("guCode", guCode);
				fineDustObj.put("fineDust", fineDust);
				fineDustObj.put("ultraFineDust", ultraFineDust);
				fineDustObj.put("score", score);
				
				fineDustArr.add(fineDustObj);
			}
			rs.close();
			return fineDustArr.toJSONString();
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
