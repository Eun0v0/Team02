package com.my.myrooms.searchlog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
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
	private Map<Integer, GuScoreModel> guInfoMap;
	//private Map<Integer, String> guCodeNameMap;
	private Map<Integer, Integer> guScoreMap;
	private SortByValueApi sortByValueApi;
	
	public void initScoreMap() {
		for (int guCode : guScoreMap.keySet()) {
			guScoreMap.put(guCode, 0);
		}
	}
	
	@Override
	public void saveLog(String[] searchArr, CustomerModel customer) {
		//검색 로그를 SearchLog 테이블에 넣음
		searchLogDBHandle.insertLog(searchArr, customer);
		if (guScoreMap != null) {
			initScoreMap();
		}
	}

	@Override
	public void wSafeZoneGroupBy() {
		//(guCode, score)을 객체로 갖는 리스트 생성 
		wSafeZoneArr = wSafeZoneDBHandle.wSafeZoneGroupBy();
	}
	
	public void setGuList() {
		guInfoMap = new HashMap<Integer, GuScoreModel>();
		//guCodeNameMap = new HashMap<Integer, String>();
		guScoreMap = new HashMap<Integer, Integer>();
		
		ArrayList<GuScoreModel> initScoreArr = locCodeDBHandle.getGuCode();
		
		for (GuScoreModel m : initScoreArr) {
			guInfoMap.put(m.getGuCode(), new GuScoreModel(m.getGu(), m.getGuCode(), m.getScore(), m.getLatitude(), m.getLongitude()));
			//guCodeNameMap.put(m.getGuCode(), m.getGu());
			guScoreMap.put(m.getGuCode(), 0);
		}
	}
	
	public void getGuScore(String option) {
		//계산: 각 테이블에서 항목별로 뽑아서 'guCode' 별로 점수를 부여
		//1. 여성안심zone
		if (option.equals("wsafezone")) {
			if (wSafeZoneArr == null) {
				wSafeZoneGroupBy();
			}
			
			for (WSafeZoneScoreModel wSafeZone : wSafeZoneArr) {
				int guCode = wSafeZone.getGuCode();
				int guScore = wSafeZone.getScore();

				int newScore = guScoreMap.get(guCode) + guScore;
				guScoreMap.put(guCode, newScore);              
			}
			return;
		}
		
		//2. 그 외
		String sql = "SELECT gucode, score FROM " + option;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int guCode = rs.getInt("gucode");
				int guScore = rs.getInt("score");
				int newScore = guScoreMap.get(guCode) + guScore;
				guScoreMap.put(guCode, newScore);   
			}
			rs.close();

		} catch (Exception ex) {
			System.out.println("SearchLogApiImpl/getGuScore(): " + ex.getMessage());
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void getDongScore(String option) {

		String sql = "SELECT dongcode, score FROM " + option;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int guCode = rs.getInt("dongcode") / 100000;
				int score = rs.getInt("score");
				guScoreMap.put(guCode, guScoreMap.get(guCode) + score);
			}
			rs.close();

		} catch (Exception ex) {
			System.out.println("SearchLogApiImpl/getDongScore():" + ex.getMessage());
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@Override
	public String calScore(String id, String[] searchArr) {
		//id 기반으로 회원가입 할 때 선택한 항목들 받기
		//searchArr(String[]): 검색된 항목, selectArr(String[]): 회원가입 시 선택했던 항목
		ArrayList<GuScoreModel> retList = new ArrayList<GuScoreModel>();
		ArrayList<String> selectArr = cusOptionDBHandle.selectOption(id);
		JSONArray retJsonArr = new JSONArray();
		
		//중복되는 데이터만 뽑기
		optionMap = new HashMap<String, Integer>();
		
		if (selectArr != null) {
			for (String option : selectArr) {
				if (!optionMap.containsKey(option)) {
					optionMap.put(option, 0);
				}
			}
		}
		for (String option : searchArr) {
			if (!optionMap.containsKey(option)) 
				optionMap.put(option, 0);
		}
		
		//계산
		for (String option : optionMap.keySet()) {
			if (guScoreMap == null) {
				setGuList();
			}
			
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
			String gu = guInfoMap.get(guCode).getGu();
			int score = guScoreMap.get(guCode);
			double latitude = guInfoMap.get(guCode).getLatitude();
			double longitude = guInfoMap.get(guCode).getLongitude();
			
			GuScoreModel guScoreModel = new GuScoreModel(gu, guCode, score, latitude, longitude);
			retList.add(guScoreModel);
			
			retJsonArr.add(guScoreModel.makeJson());
		}

		return retJsonArr.toJSONString();
	}
}