package com.spring.dto;

import java.util.Date;

public class UserInfoVO {
	
	private String userId;
	private String userPwd;
	private String name;
	private String phone;
	private String mail;
	private int joinState =1;
	private Date joinDate;
	
	public String getUserid() {
		return userId;
	}
	public void setUserid(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getJoinState() {
		return joinState;
	}
	public void setJoinState(int joinState) {
		this.joinState = joinState;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	
	
	

}
