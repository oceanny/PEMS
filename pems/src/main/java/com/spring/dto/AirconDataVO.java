package com.spring.dto;

import oracle.sql.DATE;

public class AirconDataVO {
	
	private int aDataNum;
	private int temp;
	private int hum;
	private DATE aTime;
	private String aFloor;
	
	public int getaDataNum() {
		return aDataNum;
	}
	
	public void setaDataNum(int aDataNum) {
		this.aDataNum = aDataNum;
	}
	
	public int getTemp() {
		return temp;
	}
	
	public void setTemp(int temp) {
		this.temp = temp;
	}
	
	public int getHum() {
		return hum;
	}
	
	public void setHum(int hum) {
		this.hum = hum;
	}
	
	public DATE getaTime() {
		return aTime;
	}
	
	public void setaTime(DATE aTime) {
		this.aTime = aTime;
	}
	
	public String getaFloor() {
		return aFloor;
	}
	
	public void setaFloor(String aFloor) {
		this.aFloor = aFloor;
	}

}
