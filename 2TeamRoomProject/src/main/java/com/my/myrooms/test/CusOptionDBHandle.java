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
public class CusOptionDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;

	public String makeJson() {

		System.out.println("aa");
		JSONArray cusOptionArr = new JSONArray();
		String sql = "select * from c_option";
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString("id");
				String air = rs.getString("air");
				String noise = rs.getString("noise");
				String criminal = rs.getString("criminal");
				String foreigner = rs.getString("foreigner");
				String wSafeZone = rs.getString("safezone");
				String traffic = rs.getString("traffic");

				JSONObject cusOptionObj = new JSONObject();

				cusOptionObj.put("id", id);
				cusOptionObj.put("air", air);
				cusOptionObj.put("noise", noise);
				cusOptionObj.put("criminal", criminal);
				cusOptionObj.put("foreigner", foreigner);
				cusOptionObj.put("wSafeZone", wSafeZone);
				cusOptionObj.put("traffic", traffic);

				cusOptionArr.add(cusOptionObj);
			}
			rs.close();
			return cusOptionArr.toJSONString();

		} catch (Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}

	public String insertCusOption(String id, String option){ 
		String sql ="insert into C_OPTION values(?, indexseq.nextval, ?)"; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, option);
			pstmt.execute();
			
			System.out.println("추가 성공");
			return "add success";
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("추가 실패");
			return "add fail" + e.getMessage();
		}
	}
	
}
