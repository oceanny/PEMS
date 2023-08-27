package com.spring.dto;

import java.util.Date;

public class ChargeVO {

	String charRecordNum;
	Date charStartTime;
	int charFin;
	String carNum;
	String charNum;
	Date charTime;
	long leftHour;
	long leftMinute;
	
	
	public long getLeftHour() {
		return leftHour;
	}
	public void setLeftHour(long leftHour) {
		this.leftHour = leftHour;
	}
	public long getLeftMinute() {
		return leftMinute;
	}
	public void setLeftMinute(long leftMinute) {
		this.leftMinute = leftMinute;
	}
	public String getCharRecordNum() {
		return charRecordNum;
	}
	public void setCharRecordNum(String charRecordNum) {
		this.charRecordNum = charRecordNum;
	}
	public Date getCharStartTime() {
		return charStartTime;
	}
	public void setCharStartTime(Date charStartTime) {
		this.charStartTime = charStartTime;
	}
	public int getCharFin() {
		return charFin;
	}
	public void setCharFin(int charFin) {
		this.charFin = charFin;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getCharNum() {
		return charNum;
	}
	public void setCharNum(String charNum) {
		this.charNum = charNum;
	}
	public Date getCharTime() {
		return charTime;
	}
	public void setCharTime(Date charTime) {
		this.charTime = charTime;
	}
	
	
}
