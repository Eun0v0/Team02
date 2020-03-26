package com.my.myrooms.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class InsuranceDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;
	
	public String makeJson(){
		JSONArray insuranceArr = new JSONArray();
		String sql="select * from insurance";
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				String insuranceIndex = rs.getString("insuranceIndex");
				String insuranceName = rs.getString("insuranceName");
				String category = rs.getString("category");
				String ages = rs.getString("ages");
				String sex = rs.getString("sex");
				String imgName = rs.getString("imgName");
				
				JSONObject InsuranceObj = new JSONObject();
			
				InsuranceObj.put("insuranceIndex", insuranceIndex);
				InsuranceObj.put("insuranceName", insuranceName);
				InsuranceObj.put("category", category);
				InsuranceObj.put("ages", ages);
				InsuranceObj.put("sex", sex);
				InsuranceObj.put("imgName", imgName);
				
				insuranceArr.add(InsuranceObj);
			}
			rs.close();
			return insuranceArr.toJSONString();
			
		}catch(Exception ex) {
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
	
	public void deleteInsurance(String name){
		String sql="delete from insurance where insurancename=?";
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.executeUpdate();	
			
			log.info("삭제 성공");
			
		}catch(Exception ex) {
			log.info("삭제 실패: "+ex.getMessage());
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void updateInsurance(String index, String name, String category, String ages, String sex, String imgname){
		JSONArray insuranceArr = new JSONArray();
		String sql="update insurance set insuranceIndex=?, insurancename=?, category=?, ages=?,sex=?,imgname=? where insurancename=?";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, index);
			pstmt.setString(2, name);
			pstmt.setString(3, category);
			pstmt.setString(4, ages);
			pstmt.setString(5, sex);
			pstmt.setString(6, imgname);
			pstmt.setString(7, name);
			
			pstmt.executeUpdate();	
			log.info("수정 성공");
			
		}catch(Exception ex) {
			log.info("수정 실패: "+ex.getMessage());
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void insertInsurance(String index, String name, String category, String ages, String sex, String imgname){
		JSONArray insuranceArr = new JSONArray();
		String sql="insert into insurance values(?,?,?,?,?,?)";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, index);
			pstmt.setString(2, name);
			pstmt.setString(3, category);
			pstmt.setString(4, ages);
			pstmt.setString(5, sex);
			pstmt.setString(6, imgname);
			
			pstmt.execute();	
			log.info("수정 성공");
			
		}catch(Exception ex) {
			log.info("수정 실패: "+ex.getMessage());
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public String selectUserIns(int age, String sex){
		JSONArray insuranceArr = new JSONArray();
		String sql="select * from insurance where ages=? and sex=?";
		ResultSet rs = null;
		String ages=null;
		
		SimpleDateFormat f = new SimpleDateFormat("yyyy");
		Date time = new Date();
		
		String time1 = f.format(time);
		int tempAge = age/10000;
		
		int resultAge = Integer.parseInt(time1) - tempAge;
		
		System.out.println("나이나이:" +resultAge);
		if(20<=resultAge && resultAge<30) {
			ages="20대";
		} else if (30<=resultAge && resultAge<40){
			ages="30대";
		} else {
			ages="40대";
		}
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ages);
			pstmt.setString(2, sex);
			
			rs = pstmt.executeQuery();	
			
			while(rs.next()){
				String insuranceIndex = rs.getString("insuranceIndex");
				String insuranceName = rs.getString("insuranceName");
				String category = rs.getString("category");
				String insAges = rs.getString("ages");
				String insSex = rs.getString("sex");
				String imgName = rs.getString("imgName");
				
				JSONObject InsuranceObj = new JSONObject();
			
				InsuranceObj.put("insuranceIndex", insuranceIndex);
				InsuranceObj.put("insuranceName", insuranceName);
				InsuranceObj.put("category", category);
				InsuranceObj.put("ages", insAges);
				InsuranceObj.put("sex", insSex);
				InsuranceObj.put("imgName", imgName);
				
				insuranceArr.add(InsuranceObj);
			}
			rs.close();
			return insuranceArr.toJSONString();
			
		}catch(Exception ex) {
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
}
