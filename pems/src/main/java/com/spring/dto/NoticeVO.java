package com.spring.dto;

import java.util.Date;

public class NoticeVO {
	private int notiNum; 
	private String notiTitle; 
	private String adminId; 
	private String notiCont; 
	private int notiCnt; 
	private Date notiRegDate; 
	private Date notiModiDate; 
	
	
	
	public int getNotiNum() {
		return notiNum;
	}
	public void setNotiNum(int notiNum) {
		this.notiNum = notiNum;
	}
	public String getNotiTitle() {
		return notiTitle;
	}
	public void setNotiTitle(String notiTitle) {
		this.notiTitle = notiTitle;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getNotiCont() {
		return notiCont;
	}
	public void setNotiCont(String notiCont) {
		this.notiCont = notiCont;
	}
	public int getNotiCnt() {
		return notiCnt;
	}
	public void setNotiCnt(int notiCnt) {
		this.notiCnt = notiCnt;
	}
	public Date getNotiRegDate() {
		return notiRegDate;
	}
	public void setNotiRegDate(Date notiRegDate) {
		this.notiRegDate = notiRegDate;
	}
	public Date getNotiModiDate() {
		return notiModiDate;
	}
	public void setNotiModiDate(Date notiModiDate) {
		this.notiModiDate = notiModiDate;
	}
	
	
}


