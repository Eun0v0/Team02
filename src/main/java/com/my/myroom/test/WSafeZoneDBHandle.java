package com.my.myroom.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
		}
	}
}
