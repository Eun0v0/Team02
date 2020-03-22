package com.my.myrooms.searchlog;

import java.sql.Date;

import lombok.Data;

@Data
public class SearchLogModel {
	
	private String id;
	private int age;
	private String sex;
	private String job;
	private String gu;
	private String dong;
	private String searchOption;
	private Date searchDate;
	
	public SearchLogModel(String id, int age, String sex, String job, String gu, String dong, String searchOption,
			Date searchDate) {
		
		this.id = id;
		this.age = age;
		this.sex = sex;
		this.job = job;
		this.gu = gu;
		this.dong = dong;
		this.searchOption = searchOption;
		this.searchDate = searchDate;
	}
	
	
}
