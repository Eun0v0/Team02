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
public class TrafficDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;

	public String makeJson() {
		JSONArray trafficArr = new JSONArray();
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
		}
	}
}
