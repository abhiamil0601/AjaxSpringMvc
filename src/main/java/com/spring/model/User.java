package com.spring.model;

public class User {

	private String name;
	private String mobile;
	private String message;
	
	public User() {	}

	public User(String name, String mobile, String message) {
		super();
		this.name = name;
		this.mobile = mobile;
		this.message = message;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", mobile=" + mobile + ", message=" + message + "]";
	}

	
	
	
	
}
