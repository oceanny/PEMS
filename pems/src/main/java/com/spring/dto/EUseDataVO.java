package com.spring.dto;

import oracle.sql.DATE;

public class EUseDataVO {

	private int eUseNum;
	private DATE eTime;
	private int lUseData;
	private int aUseData;
	private int fUseData;
	
	public int geteUseNum() {
		return eUseNum;
	}
	
	public void seteUseNum(int eUseNum) {
		this.eUseNum = eUseNum;
	}
	
	public DATE geteTime() {
		return eTime;
	}
	
	public void seteTime(DATE eTime) {
		this.eTime = eTime;
	}
	
	public int getlUseData() {
		return lUseData;
	}
	
	public void setlUseData(int lUseData) {
		this.lUseData = lUseData;
	}
	
	public int getaUseData() {
		return aUseData;
	}
	
	public void setaUseData(int aUseData) {
		this.aUseData = aUseData;
	}
	
	public int getfUseData() {
		return fUseData;
	}
	
	public void setfUseData(int fUseData) {
		this.fUseData = fUseData;
	}
	
}
