package com.spring.dto;

import oracle.sql.DATE;

public class FanDataVO {

	private int fDataNum;
	private int pm;
	private DATE fTime;
	private String fFloor;
	
	public int getfDataNum() {
		return fDataNum;
	}
	
	public void setfDataNum(int fDataNum) {
		this.fDataNum = fDataNum;
	}
	
	public int getPm() {
		return pm;
	}
	
	public void setPm(int pm) {
		this.pm = pm;
	}
	
	public DATE getfTime() {
		return fTime;
	}
	
	public void setfTime(DATE fTime) {
		this.fTime = fTime;
	}
	
	public String getfFloor() {
		return fFloor;
	}
	
	public void setfFloor(String fFloor) {
		this.fFloor = fFloor;
	}
	
}
