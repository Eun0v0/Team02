package com.my.myrooms.searchlog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.myrooms.join.CustomerModel;
import com.my.myrooms.test.CrimeDBHandle;
import com.my.myrooms.test.CusOptionDBHandle;
import com.my.myrooms.test.FineDustDBHandle;
import com.my.myrooms.test.ForeignerDBHandle;
import com.my.myrooms.test.LocCodeDBHandle;
import com.my.myrooms.test.NoiseDBHandle;
import com.my.myrooms.test.SearchLogDBHandle;
import com.my.myrooms.test.TrafficDBHandle;
import com.my.myrooms.test.WSafeZoneDBHandle;
import com.my.myrooms.test.WSafeZoneScoreModel;

@Service
public class SearchLogApiImpl implements SearchLogApi {

	@Autowired
	private DataSource dataSource;
	@Autowired
	private SearchLogDBHandle searchLogDBHandle;
	@Autowired
	private WSafeZoneDBHandle wSafeZoneDBHandle;
	@Autowired
	private CusOptionDBHandle cusOptionDBHandle;
	@Autowired
	private LocCodeDBHandle locCodeDBHandle;
	
	private ArrayList<WSafeZoneScoreModel> wSafeZoneArr;
	private Map<String, Integer> optionMap;
	private Map<Integer, Integer> guScoreMap;
	private SortByValueApi sortByValueApi;
	
	@Override
	public void saveLog(String[] searchArr, CustomerModel customer) {
		//검색 로그를 SearchLog 테이블에 넣음
		searchLogDBHandle.insertLog(searchArr, customer);
	}

	@Override
	public void wSafeZoneGroupBy() {
		//(guCode, score)을 객체로 갖는 리스트 생성 
		wSafeZoneArr = wSafeZoneDBHandle.wSafeZoneGroupBy();
	}
	
	public void getGuScore(String option) {
		if (guScoreMap == null) {
			guScoreMap = locCodeDBHandle.getGuCode();
		}
		//계산: 각 테이블에서 항목별로 뽑아서 'guCode' 별로 점수를 부여
		//1. 여성안심zone
		if (option.equals("wsafezone")) {
			for (WSafeZoneScoreModel wSafeZone : wSafeZoneArr) {
				int guCode = wSafeZone.getGuCode();
				int guScore = wSafeZone.getScore();
				guScoreMap.put(guCode, guScoreMap.get(guCode) + guScore);                                                                                                                                                                                      
			}
			return;
		}
		
		//2. 그 외
		String sql = "SELECT gucode, score FROM " + option;
		ResultSet rs = null;

		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int guCode = rs.getInt("gucode");
				int guScore = rs.getInt("score");
				guScoreMap.put(guCode, guScoreMap.get(guCode) + guScore);
			}
			rs.close();

		} catch (Exception ex) {
			System.out.println("SearchLogApiImpl/getGuScore(): " + ex.getMessage());
		}
	}
	
	public void getDongScore(String option) {
		String sql = "SELECT dongcode, score FROM " + option;
		ResultSet rs = null;

		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int guCode = rs.getInt("dongcode") / 100000;
				int score = rs.getInt("score");
				guScoreMap.put(guCode, guScoreMap.get(guCode) + score);
			}
			rs.close();

		} catch (Exception ex) {
			System.out.println("SearchLogApiImpl/getDongScore():" + ex.getMessage());
		}
	}

	@Override
	public ArrayList<guScoreModel> calScore(String id, String[] searchArr) {
		//id 기반으로 회원가입 할 때 선택한 항목들 받기
		//searchArr(String[]): 검색된 항목, selectArr(String[]): 회원가입 시 선택했던 항목
		ArrayList<guScoreModel> retList = new ArrayList<guScoreModel>();
		ArrayList<String> selectArr = cusOptionDBHandle.selectOption(id);
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$" + selectArr);
		//중복되는 데이터만 뽑기
		optionMap = new HashMap<String, Integer>();
		
		for (String option : selectArr) {
			if (!optionMap.containsKey(option)) {
				optionMap.put(option, 0);
			}
		}
		for (String option : searchArr) {
			if (!optionMap.containsKey(option)) 
				optionMap.put(option, 0);
		}
		
		//계산
		for (String option : optionMap.keySet()) {
			//동 단위: 교통사고, 외국인
			if (option.equals("traffic") || option.equals("foreigner")) {
				getDongScore(option);
				continue;
			} 
			//구 단위: 여성안심존, 미세먼지, 소음공해, 범죄치안
			getGuScore(option);
		}
		
		Iterator<Integer> iter = sortByValueApi.sortByValue(guScoreMap).iterator();
		
		while (iter.hasNext()) {
			int guCode = iter.next();
			int score = guScoreMap.get(guCode);
			retList.add(new guScoreModel(guCode, score));
		}
		
		return retList;
	}
}