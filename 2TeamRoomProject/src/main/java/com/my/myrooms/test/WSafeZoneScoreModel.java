package com.my.myrooms.test;

public class WSafeZoneScoreModel {
	int guCode;
	int score;
	
	public WSafeZoneScoreModel(int guCode, int score) {
		this.guCode = guCode;
		this.score = score;
	}
	
	public int getGuCode() {
		return guCode;
	}
	public void setGuCode(int guCode) {
		this.guCode = guCode;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
}
