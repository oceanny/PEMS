package com.spring.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.CarVO;
import com.spring.dto.UserVO;

public interface CarService {

	CarVO getCar(String carNum) throws SQLException;
	Map<String, Object> getCarList(SearchListCommand command) throws SQLException;
	Map<String, Object> getUserCarList(SearchListCommand command) throws SQLException;
	
	CarVO getElectCar(String carNum) throws SQLException;
	
	void regist(CarVO car) throws SQLException;
	
	void modify(CarVO car) throws SQLException;
	
	void remove(String carNum) throws SQLException;
		
}
