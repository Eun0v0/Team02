package com.my.myrooms.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		String sql = "select * from loccode";
		ResultSet rs = null;

		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
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
	/*
	 * public Map<Integer, Integer> getDongCode() {
	 * 
	 * Map<Integer, Integer> dongCodeMap = new HashMap<Integer, Integer>();
	 * 
	 * String sql = "SELECT dongcode FROM loccode WHERE dongcode IS NOT NULL";
	 * ResultSet rs = null;
	 * 
	 * try { Connection conn = dataSource.getConnection(); PreparedStatement pstmt =
	 * conn.prepareStatement(sql); rs = pstmt.executeQuery();
	 * 
	 * while (rs.next()) { int dongCode = rs.getInt("dongcode"); if
	 * (!dongCodeMap.containsKey(dongCode)) dongCodeMap.put(dongCode, 0); }
	 * rs.close(); return dongCodeMap;
	 * 
	 * } catch (Exception ex) { return null; } }
	 */
}
