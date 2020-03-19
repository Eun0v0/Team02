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
public class NoiseDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray noiseArr = new JSONArray();
		String sql="select * from noise";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				int guCode = rs.getInt("guCode");
				int total = rs.getInt("total");
				int score = rs.getInt("score");
				
				JSONObject noiseObj = new JSONObject();
			
				noiseObj.put("guCode", guCode);
				noiseObj.put("total", total);
				noiseObj.put("score", score);
				
				noiseArr.add(noiseObj);
			}
			rs.close();
			System.out.println("size:" + noiseArr.size());
			return noiseArr.toJSONString();
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
