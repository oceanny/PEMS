package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.CarDAO;
import com.spring.dto.CarVO;

public class CarServiceImpl implements CarService {
	
	private CarDAO carDAO;
	public void setCarDAO(CarDAO carDAO) {
		this.carDAO = carDAO;
	}
	
	/*
	 * @Override public Map<String, Object> getCarList() throws SQLException {
	 * List<CarInfoVO> carList = carDAO.selectCarList(); Map<String, Object> dataMap
	 * = new HashMap<String, Object>(); dataMap.put("carList", carList); return
	 * dataMap; }
	 */
	@Override
	public Map<String, Object> getCarList(SearchListCommand command) throws SQLException {
		List<CarVO> carList = carDAO.selectCarList(command);
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("carList", carList);
		
		return dataMap;
	}
	@Override
	public void regist(CarVO car) throws SQLException {
		carDAO.insertCar(car);
	}
	@Override
	public void modify(CarVO car) throws SQLException {
		carDAO.updateCar(car);
	}
	@Override
	public void remove(String carNum) throws SQLException {
		carDAO.deleteCar(carNum);
		
	}

	@Override
	public CarVO getCar(String carNum) throws SQLException {
		CarVO car = carDAO.selectCarByCarNum(carNum);
		return car;
	}
	
}
