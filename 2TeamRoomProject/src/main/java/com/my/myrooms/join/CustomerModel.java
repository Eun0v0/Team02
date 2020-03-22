package com.my.myrooms.join;

import lombok.Data;

@Data
public class CustomerModel {

	private String id;
	private String password;
	private String sex;
	private int age;
	private String gu;
	private String dong;
	private String job;
	
	public CustomerModel(String id, String password, String sex, int age, String gu, String dong, String job) {
		
		this.id = id;
		this.password = password;
		this.sex = sex;
		this.age = age;
		this.gu = gu;
		this.dong = dong;
		this.job = job;
	}
}
