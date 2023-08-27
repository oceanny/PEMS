package com.spring.dto;

import java.util.Date;

public class AbanVO {

	String abanCarListNum;
	String carNum;
	String recordNum;
	
	String userId;
	Date entDate;
	Date outDate;
	
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getEntDate() {
		return entDate;
	}
	public void setEntDate(Date entDate) {
		this.entDate = entDate;
	}
	public Date getOutDate() {
		return outDate;
	}
	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}
	public String getAbanCarListNum() {
		return abanCarListNum;
	}
	public void setAbanCarListNum(String abanCarListNum) {
		this.abanCarListNum = abanCarListNum;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getRecordNum() {
		return recordNum;
	}
	public void setRecordNum(String recordNum) {
		this.recordNum = recordNum;
	}
	
	
}
