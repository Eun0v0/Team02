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
public class NoiseDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray noiseArr = new JSONArray();
		String sql="select * from noise";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				int guCode = rs.getInt("guCode");
				int total = rs.getInt("total");
				int score = rs.getInt("score");
				
				JSONObject noiseObj = new JSONObject();
			
				noiseObj.put("guCode", guCode);
				noiseObj.put("total", total);
				noiseObj.put("score", score);
				
				noiseArr.add(noiseObj);
			}
			rs.close();
			System.out.println("size:" + noiseArr.size());
			return noiseArr.toJSONString();
			
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
		String sql="select lati, logti, score from loccode l , noise n where l.gucode =n.gucode AND l.dongcode is NULL";
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
