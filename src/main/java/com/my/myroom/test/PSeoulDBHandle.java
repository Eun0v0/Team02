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
public class PSeoulDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray pSeoulArr = new JSONArray();
		String sql="select * from people_seoul";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				int guCode = rs.getInt("gucode");
				int total = rs.getInt("total");
				int mKid = rs.getInt("m_kid");
				int mTen = rs.getInt("m_Ten");
				int mmTen = rs.getInt("m_mTen");
				int mTwenty = rs.getInt("m_twenty");
				int mmTwenty = rs.getInt("m_mtwenty");
				int mThirty = rs.getInt("m_thirty");
				int mmThirty = rs.getInt("m_mthirty");
				int mForty = rs.getInt("m_fourty");
				int mmForty = rs.getInt("m_mfourty");
				int mFifty = rs.getInt("m_fifty");
				int mmFifty = rs.getInt("m_mfifty");
				int mSixty = rs.getInt("m_sixty");
				int mmSixty = rs.getInt("m_msixty");
				int mSeventy = rs.getInt("m_seventy");
				int wKid = rs.getInt("w_kid");
				int wTen = rs.getInt("w_Ten");
				int wmTen = rs.getInt("w_mTen");
				int wTwenty = rs.getInt("w_twenty");
				int wmTwenty = rs.getInt("w_mtwenty");
				int wThirty = rs.getInt("w_thirty");
				int wmThirty = rs.getInt("w_mthirty");
				int wForty = rs.getInt("w_fourty");
				int wmForty = rs.getInt("w_mfourty");
				int wFifty = rs.getInt("w_fifty");
				int wmFifty = rs.getInt("w_mfifty");
				int wSixty = rs.getInt("w_sixty");
				int wmSixty = rs.getInt("w_msixty");
				int wSeventy = rs.getInt("w_seventy");
				
				
				JSONObject pSeoulObj = new JSONObject();
				pSeoulObj.put("guCode", guCode);
				pSeoulObj.put("total", total);
				pSeoulObj.put("mKid", mKid);
				pSeoulObj.put("mTen", mTen);
				pSeoulObj.put("mmTen", mmTen);
				pSeoulObj.put("mTwenty", mTwenty);
				pSeoulObj.put("mmTwenty", mmTwenty);
				pSeoulObj.put("mThirty", mThirty);
				pSeoulObj.put("mmThirty", mmThirty);
				pSeoulObj.put("mForty", mForty);
				pSeoulObj.put("mmForty", mmForty);
				pSeoulObj.put("mFifty", mFifty);
				pSeoulObj.put("mmFifty", mmFifty);
				pSeoulObj.put("mSixty", mSixty);
				pSeoulObj.put("mmSixty", mmSixty);
				pSeoulObj.put("mSeventy", mSeventy);
				pSeoulObj.put("wKid", wKid);
				pSeoulObj.put("wTen", wTen);
				pSeoulObj.put("wmTen", wmTen);
				pSeoulObj.put("wTwenty", wTwenty);
				pSeoulObj.put("wmTwenty", wmTwenty);
				pSeoulObj.put("wThirty", wThirty);
				pSeoulObj.put("wmThirty", wmThirty);
				pSeoulObj.put("wForty", wForty);
				pSeoulObj.put("wmForty", wmForty);
				pSeoulObj.put("wFifty", wFifty);
				pSeoulObj.put("wmFifty", wmFifty);
				pSeoulObj.put("wSixty", wSixty);
				pSeoulObj.put("wmSixty", wmSixty);
				pSeoulObj.put("wSeventy", wSeventy);
				
				pSeoulArr.add( pSeoulObj );
			}
			rs.close();
			return pSeoulArr.toJSONString();
			
		}catch(Exception ex) {
			return "Error: " + ex.getStackTrace();
		}
	}
}
