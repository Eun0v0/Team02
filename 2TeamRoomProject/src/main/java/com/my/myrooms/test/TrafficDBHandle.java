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
public class TrafficDBHandle {
	@Autowired
	DataSource dataSource;

	public String makeJson() {
		JSONArray trafficArr = new JSONArray();
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "select * from traffic";
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int dongCode = rs.getInt("dongcode");
				int accidCount = rs.getInt("accidcount");
				double latitude = rs.getDouble("latitude");
				double longitude = rs.getDouble("longitude");
				int score = rs.getInt("score");

				JSONObject trafficObj = new JSONObject();

				trafficObj.put("dongCode", dongCode);
				trafficObj.put("accidCount", accidCount);
				trafficObj.put("latitude", latitude);
				trafficObj.put("longitude", longitude);
				trafficObj.put("score", score);

				trafficArr.add(trafficObj);
			}
			rs.close();
			return trafficArr.toJSONString();

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
	
	public String getLocation() {
		JSONArray locArr = new JSONArray();
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql="select latitude, longitude from traffic";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				double latitude = rs.getDouble("latitude");
				double longitude = rs.getDouble("longitude");
				
				JSONObject locObj = new JSONObject();
			
				locObj.put("latitude", latitude);
				locObj.put("longitude", longitude);
				
				locArr.add(locObj);
			}
			rs.close();
			System.out.println("size:" + locArr.size());
			return locArr.toJSONString();
			
		} catch(Exception ex) {
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
