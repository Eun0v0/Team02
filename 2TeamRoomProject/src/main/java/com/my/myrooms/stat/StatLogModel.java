package com.my.myrooms.stat;

import lombok.Data;

@Data
public class StatLogModel {
	int age;
	String sex;
	String job;
	String selectOption;
	
	public StatLogModel(int age, String sex, String job, String selectOption) {

		this.age = age;
		this.sex = sex;
		this.job = job;
		this.selectOption = selectOption;
	}
}
