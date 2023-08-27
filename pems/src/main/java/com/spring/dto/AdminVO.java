package com.spring.dto;

public class AdminVO {
	
	private String adminId;
	private String adminPwd;
	private String adminMail;
	private String adminName;
	private int joinState;
	
	public int getJoinState() {
		return joinState;
	}
	public void setJoinState(int joinState) {
		this.joinState = joinState;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public String getAdminMail() {
		return adminMail;
	}
	public void setAdminMail(String adminMail) {
		this.adminMail = adminMail;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

}
