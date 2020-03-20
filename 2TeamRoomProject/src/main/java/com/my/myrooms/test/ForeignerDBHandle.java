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
public class ForeignerDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray foreignerArr = new JSONArray();
		String sql="select * from foreigner";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				int dongCode = rs.getInt("dongcode");
				int total = rs.getInt("total");
				int chineses = rs.getInt("chineses");
				int notChinese = rs.getInt("notchinese");
				int score = rs.getInt("score");
				
				JSONObject foreignerObj = new JSONObject();
			
				foreignerObj.put("dongCode", dongCode);
				foreignerObj.put("total", total);
				foreignerObj.put("chineses", chineses);
				foreignerObj.put("notChineses", notChinese);
				foreignerObj.put("score", score);
				
				foreignerArr.add(foreignerObj);
			}
			rs.close();
			return foreignerArr.toJSONString();
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
