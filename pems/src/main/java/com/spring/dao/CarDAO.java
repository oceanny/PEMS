package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.CarVO;

public interface CarDAO {

	List<CarVO> selectCarList();
	List<CarVO> selectCarList(SearchListCommand command) throws SQLException;
	
//	public int selectSearchCarListCount(SearchListCommand command) throws SQLException;
	
	CarVO selectCarByCarNum(String carNum) throws SQLException;
	
	void insertCar(CarVO car) throws SQLException;
	
	void updateCar(CarVO car) throws SQLException;
	
	void deleteCar(String carNum) throws SQLException;
}
