package com.my.myrooms.test;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.myrooms.join.CustomerModel;
import com.my.myrooms.stat.StatLogModel;

@Repository
public class SearchLogDBHandle {
	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;

	public String makeJson() {
		JSONArray searchLogArr = new JSONArray();
		String sql = "select * from searchlog";
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString("id");
				String sex = rs.getString("sex");
				int age = rs.getInt("age");
				String job = rs.getString("job");
				Date searchDate = rs.getDate("searchDate");
				String gu = rs.getString("gu");
				String dong = rs.getString("dong");
				String searchOption = rs.getString("searchOption");

				JSONObject searchLogObj = new JSONObject();

				searchLogObj.put("id", id);
				searchLogObj.put("sex", sex);
				searchLogObj.put("age", age);
				searchLogObj.put("job", job);
				searchLogObj.put("searchDate", searchDate);
				searchLogObj.put("gu", gu);
				searchLogObj.put("dong", dong);
				searchLogObj.put("searchOption", searchOption);

				searchLogArr.add(searchLogObj);
			}
			rs.close();
			return searchLogArr.toJSONString();

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

	public void insertLog(String[] searchArr, CustomerModel customer) {

		try {
			conn = dataSource.getConnection();
			String sql = "INSERT INTO searchlog VALUES(?,?,?,?,?,?,?,sysdate)";

			for (String key : searchArr) {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, customer.getId());
				pstmt.setInt(2, customer.getAge());
				pstmt.setString(3, customer.getSex());
				pstmt.setString(4, customer.getJob());
				pstmt.setString(5, customer.getGu());
				pstmt.setString(6, customer.getDong());
				pstmt.setString(7, key);
				pstmt.execute();

				System.out.println(sql);
			}
			conn.close();
			System.out.println("검색Log Insert 성공");

		} catch (Exception e) {
			System.out.println("검색Log Insert 실패");
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

public ArrayList<StatLogModel> selectAllLog() {
		
		String sql = "select id, age, sex, job, searchoption from searchlog";
		ArrayList<StatLogModel> searchLogList = new ArrayList<StatLogModel>();
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int age = (rs.getInt("age") / 10) * 10;
				String sex = rs.getString("sex");
				String job = rs.getString("job");
				String selectOption = rs.getString("searchoption");
				
				searchLogList.add(new StatLogModel(age, sex, job, selectOption));
			}
			rs.close();
			return searchLogList;

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
