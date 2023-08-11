package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.CarVO;
import com.spring.dto.UserVO;

public interface CarDAO {

	List<CarVO> selectSearchCarList(SearchListCommand command) throws SQLException;
	List<CarVO> selectUserCarList(SearchListCommand command) throws SQLException;
	
	List<String> selectCarNumById(UserVO user) throws SQLException;
	
	CarVO selectCarByCarNum(String carNum) throws SQLException;
	
	void insertCar(CarVO car) throws SQLException;
	
	void updateCar(CarVO car) throws SQLException;
	
	void deleteCar(String carNum) throws SQLException;

	int selectSearchCarListCount(SearchListCommand command);
}
