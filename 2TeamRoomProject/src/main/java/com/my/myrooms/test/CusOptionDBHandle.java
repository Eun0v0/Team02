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
	
	public String makeJson(){
		JSONArray cusOptionArr = new JSONArray();
		String sql="select * from c_option";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				Boolean air = rs.getBoolean("air");
				Boolean noise = rs.getBoolean("noise");
				Boolean criminal = rs.getBoolean("criminal");
				Boolean foreigner = rs.getBoolean("foreigner");
				Boolean wSafeZone = rs.getBoolean("safezone");
				Boolean traffic = rs.getBoolean("traffic");
				
				JSONObject cusOptionObj = new JSONObject();
			
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
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
