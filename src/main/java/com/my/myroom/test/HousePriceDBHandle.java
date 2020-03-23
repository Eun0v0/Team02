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
public class HousePriceDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray housePriceArr = new JSONArray();
		String sql="select * from houseprice";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				int dongCode = rs.getInt("dongCode");
				long price = rs.getLong("price");
				int score = rs.getInt("score");
				
				JSONObject housePriceObj = new JSONObject();
			
				housePriceObj.put("dongCode", dongCode);
				housePriceObj.put("price", price);
				housePriceObj.put("score", score);
				
				housePriceArr.add(housePriceObj);
			}
			rs.close();
			return housePriceArr.toJSONString();
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
