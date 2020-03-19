package com.my.myroom.test;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SearchLogDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;

	public String makeJson() {
		JSONArray searchingArr = new JSONArray();
		String sql = "select * from searchlog";
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString("id");
				String sex = rs.getString("sex");
				int age = rs.getInt("age");
				Date searchDate = rs.getDate("searchDate");
				int air = rs.getInt("air");
				int noise = rs.getInt("noise");
				int criminal = rs.getInt("criminal");
				int foreigner = rs.getInt("foreigner");
				int wSafeZone = rs.getInt("safezone");
				int traffic = rs.getInt("taffic");

				JSONObject searchingObj = new JSONObject();

				searchingObj.put("id", id);
				searchingObj.put("sex", sex);
				searchingObj.put("age", age);
				searchingObj.put("searchDate", searchDate);
				searchingObj.put("air", air);
				searchingObj.put("noise", noise);
				searchingObj.put("criminal", criminal);
				searchingObj.put("foreigner", foreigner);
				searchingObj.put("wSafeZone", wSafeZone);
				searchingObj.put("traffic", traffic);

				searchingArr.add(searchingObj);
			}
			rs.close();
			return searchingArr.toJSONString();

		} catch (Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
