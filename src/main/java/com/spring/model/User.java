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

	
	public String processstring(String mobile)
	{
		String s1=mobile;
		String s2,s3,s4;
		s2=s1.substring(0,3);
		s3=s1.substring(4);
		s4=s2.concat(s3);
		System.out.println(s4);
		return s4;
	}
	
	
}
