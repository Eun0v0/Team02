package com.my.myrooms.searchlog;

import java.sql.ResultSet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import lombok.Data;

@Data
public class GuScoreModel {
	
	String gu;
	int guCode;
	int score;
	double latitude;
	double longitude;

	public GuScoreModel(String gu, int guCode, int score, double latitude, double longitude) {
		this.gu = gu;
		this.guCode = guCode;
		this.score = score;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	public JSONObject makeJson(){
		
		JSONObject guScoreJsonObj = new JSONObject();
		
		guScoreJsonObj.put("gu", gu);
		guScoreJsonObj.put("guCode", guCode);
		guScoreJsonObj.put("score", score);
		guScoreJsonObj.put("latitude", latitude);
		guScoreJsonObj.put("longitude", longitude);
		
		return guScoreJsonObj;
	}
}
