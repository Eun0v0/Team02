package com.my.myrooms.searchlog;

import java.util.ArrayList;

import com.my.myrooms.join.CustomerModel;

public interface SearchLogApi {
	
	//SearchLog 테이블에 '검색키워드 + 고객정보'를 담은 로그 저장
	void saveLog(String[] searchArr, CustomerModel customer);
	
	//여성세이프존 계산 (groupBy)
	void wSafeZoneGroupBy();
	
	//키워드 테이블에 있는 score를 기반으로 계산해서 json으로 넘김
	ArrayList<guScoreModel> calScore(String id, String[] searchArr); 
}
