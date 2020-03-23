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
public class LocCodeDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray locCodeArr = new JSONArray();
		String sql="select * from loccode";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				String gu = rs.getString("gu");
				int guCode = rs.getInt("gucode");
				String dong = rs.getString("dong");
				int dongCode = rs.getInt("dongcode");
				double latitude = rs.getDouble("lati");
				double longitude = rs.getDouble("logti");
				
				JSONObject locCodeObj = new JSONObject();
			
				locCodeObj.put("gu", gu);
				locCodeObj.put("guCode", guCode);
				locCodeObj.put("dong", dong);
				locCodeObj.put("dongCode", dongCode);
				locCodeObj.put("latitude", latitude);
				locCodeObj.put("longitude", longitude);
				
				locCodeArr.add(locCodeObj);
			}
			rs.close();
			return locCodeArr.toJSONString();
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
