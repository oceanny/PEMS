package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.CarVO;

public interface CarService {

	public CarVO getCar(String carNum) throws SQLException;
	public Map<String, Object> getCarList(SearchListCommand command) throws SQLException;
	
	// 등록
	public void regist(CarVO car) throws SQLException;
	
	// 수정
	public void modify(CarVO car) throws SQLException;
	
	// 삭제
	public void remove(String carNum) throws SQLException;
		
}
