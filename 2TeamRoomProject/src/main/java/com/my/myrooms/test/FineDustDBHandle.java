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
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public String getLocation() {
		JSONArray locArr = new JSONArray();
		String sql="select lati, logti, score from loccode l , finedust f where l.gucode =f.gucode AND l.dongcode is NULL";
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
