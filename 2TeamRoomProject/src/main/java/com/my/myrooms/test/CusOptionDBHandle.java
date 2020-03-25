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

@Repository
public class CusOptionDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray cusOptionArr = new JSONArray();
		String sql = "select * from c_option";
		ResultSet rs = null;

		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				String id = rs.getString("id");
				int indexSeq = rs.getInt("indexseq");
				String selectOption = rs.getString("selectoption");
				
				JSONObject cusOptionObj = new JSONObject();
			
				cusOptionObj.put("id", id);
				cusOptionObj.put("indexSeq", indexSeq);
				cusOptionObj.put("selectOption", selectOption);
				cusOptionArr.add(cusOptionObj);
			}
			rs.close();
			return cusOptionArr.toJSONString();

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

	public ArrayList<String> selectOption(String id) {
		
		ArrayList<String> optionArr = new ArrayList<String>();
		
		//관심사 목록 받기
		try {
			String sql = String.format("select selectoption from c_option where id='%s'", id);
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			while(rs.next()) {
				System.out.println();
				optionArr.add(rs.getString("selectoption"));
			}
			rs.close();
			return optionArr;
		
		} catch (SQLException e) {
			e.printStackTrace();
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

	public void insertCusOption(String id, String option){ 
		String sql ="insert into C_OPTION values(?, indexseq.nextval, ?)"; 
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, option);
			pstmt.execute();
			
			System.out.println("option 추가 성공");
			//return "add success";
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("option 추가 실패");
			//return "add fail" + e.getMessage();
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

