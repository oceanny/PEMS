package com.spring.dto;

import java.util.List;

public class CarVO {
	
	String carNum;
	String carId;
	int treatInfo1;
	int lotColor;
	int cTypeNum;
	int treatInfo2;
	int treatInfo3;
	String preSeat;
	
	List<UserVO> userList;
	
	public List<UserVO> getUserList() {
		return userList;
	}
	public void setUserList(List<UserVO> userList) {
		this.userList = userList;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public String getCarId() {
		return carId;
	}
	public void setCarId(String carId) {
		this.carId = carId;
	}
	public int getTreatInfo1() {
		return treatInfo1;
	}
	public void setTreatInfo1(int treatInfo1) {
		this.treatInfo1 = treatInfo1;
	}
	public int getLotColor() {
		return lotColor;
	}
	public void setLotColor(int lotColor) {
		this.lotColor = lotColor;
	}
	public int getcTypeNum() {
		return cTypeNum;
	}
	public void setcTypeNum(int cTypeNum) {
		this.cTypeNum = cTypeNum;
	}
	public String getPreSeat() {
		return preSeat;
	}
	public void setPreSeat(String preSeat) {
		this.preSeat = preSeat;
	}
	public int getTreatInfo2() {
		return treatInfo2;
	}
	public void setTreatInfo2(int treatInfo2) {
		this.treatInfo2 = treatInfo2;
	}
	public int getTreatInfo3() {
		return treatInfo3;
	}
	public void setTreatInfo3(int treatInfo3) {
		this.treatInfo3 = treatInfo3;
	}
	
	
}
