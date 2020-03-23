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
		JSONArray searchLogArr = new JSONArray();
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
				String gu = rs.getString("gu");
				String dong = rs.getString("dong");
				String searchOption = rs.getString("searchOption");
				

				JSONObject searchLogObj = new JSONObject();

				searchLogObj.put("id", id);
				searchLogObj.put("sex", sex);
				searchLogObj.put("age", age);
				searchLogObj.put("searchDate", searchDate);
				searchLogObj.put("gu", gu);
				searchLogObj.put("dong", dong);
				searchLogObj.put("searchOption", searchOption);

				searchLogArr.add(searchLogObj);
			}
			rs.close();
			return searchLogArr.toJSONString();

		} catch (Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
