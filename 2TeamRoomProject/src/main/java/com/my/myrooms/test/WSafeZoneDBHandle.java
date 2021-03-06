package com.my.myrooms.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import java.util.Map;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WSafeZoneDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson() {
		JSONArray wSafeZoneArr = new JSONArray();
		String sql = "select * from wsafezone";
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String name = rs.getString("name");
				int guCode = rs.getInt("gucode");
				double latitude = rs.getDouble("latitude");
				double longitude = rs.getDouble("longitude");
				String tel = rs.getString("tel");
				String policeOffice = rs.getString("policeoffice");

				JSONObject wSafeZoneObj = new JSONObject();

				wSafeZoneObj.put("name", name);
				wSafeZoneObj.put("guCode", guCode);
				wSafeZoneObj.put("latitude", latitude);
				wSafeZoneObj.put("longitude", longitude);
				wSafeZoneObj.put("tel", tel);
				wSafeZoneObj.put("policeOffice", policeOffice);

				wSafeZoneArr.add(wSafeZoneObj);
			}
			rs.close();
			return wSafeZoneArr.toJSONString();

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
	
	public ArrayList<WSafeZoneScoreModel> wSafeZoneGroupBy() {

		ArrayList<WSafeZoneScoreModel> arr = new ArrayList<WSafeZoneScoreModel>();
		String sql = "SELECT guCode, COUNT(*) AS score FROM wsafezone GROUP BY guCode";
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int guCode = rs.getInt("guCode");
				int score = rs.getInt("score");

				arr.add(new WSafeZoneScoreModel(guCode, score));
			}
			rs.close();
			return arr;

		} catch (Exception ex) {
			return null;
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
