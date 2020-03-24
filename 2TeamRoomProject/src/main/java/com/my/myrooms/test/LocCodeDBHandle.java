package com.my.myrooms.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LocCodeDBHandle {
	@Autowired
	DataSource dataSource;

	public String makeJson() {
		JSONArray locCodeArr = new JSONArray();
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "select * from loccode";
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String gu = rs.getString("gu");
				int guCode = rs.getInt("gucode");
				int dongCode = rs.getInt("dongcode");
				double latitude = rs.getDouble("lati");
				double longitude = rs.getDouble("logti");

				JSONObject locCodeObj = new JSONObject();

				locCodeObj.put("gu", gu);
				locCodeObj.put("guCode", guCode);
				locCodeObj.put("dongCode", dongCode);
				locCodeObj.put("latitude", latitude);
				locCodeObj.put("longitude", longitude);

				locCodeArr.add(locCodeObj);
			}
			rs.close();
			return locCodeArr.toJSONString();

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
	
	public Map<Integer, Integer> getGuCode() {

		Map<Integer, Integer> guCodeMap = new HashMap<Integer, Integer>();

		String sql = "SELECT gucode FROM loccode GROUP BY gucode";
		ResultSet rs = null;

		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int guCode = rs.getInt("gucode");
				if (!guCodeMap.containsKey(guCode))
					guCodeMap.put(guCode, 0);
			}
			rs.close();
			return guCodeMap;

		} catch (Exception ex) {
			return null;
		}
	}
}
