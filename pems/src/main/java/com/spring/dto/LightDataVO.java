package com.spring.dto;

import oracle.sql.DATE;

public class LightDataVO {
	
	private int lDataNum;
	private int illum;
	private DATE lTime;
	private String lFloor;
	
	public int getlDataNum() {
		return lDataNum;
	}
	
	public void setlDataNum(int lDataNum) {
		this.lDataNum = lDataNum;
	}
	
	public int getIllum() {
		return illum;
	}
	
	public void setIllum(int illum) {
		this.illum = illum;
	}
	
	public DATE getlTime() {
		return lTime;
	}
	
	public void setlTime(DATE lTime) {
		this.lTime = lTime;
	}
	
	public String getlFloor() {
		return lFloor;
	}
	
	public void setlFloor(String lFloor) {
		this.lFloor = lFloor;
	}

	
}
