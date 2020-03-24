package com.my.myrooms.searchlog;

public class guScoreModel {
	int guCode;
	int score;
	
	public guScoreModel(int guCode, int score) {
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
