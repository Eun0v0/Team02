package com.my.myrooms.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.myrooms.searchlog.GuScoreModel;

@Repository
public class LocCodeDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson() {
		JSONArray locCodeArr = new JSONArray();
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

	public ArrayList<GuScoreModel> getGuCode() {

		ArrayList<GuScoreModel> guCodeArr = new ArrayList<GuScoreModel>();

		String sql = "SELECT gu, gucode, lati, logti FROM loccode GROUP BY gu, gucode, lati, logti";
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String gu = rs.getString("gu");
				int guCode = rs.getInt("gucode");
				double latitude = rs.getDouble("lati");
				double longitude = rs.getDouble("logti");
				
				guCodeArr.add(new GuScoreModel(gu, guCode, 0, latitude, longitude));
			}
			rs.close();
			return guCodeArr;

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
