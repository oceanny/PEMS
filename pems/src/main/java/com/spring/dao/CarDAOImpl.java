package com.spring.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.CarVO;

public class CarDAOImpl implements CarDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<CarVO> selectCarList(SearchListCommand command) throws SQLException {
		int startRow = command.getStartRowNum();
		int endRow = startRow + command.getPerPageNum();
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", command.getSearchType());
		dataParam.put("keyword", command.getKeyword());

		List<CarVO> carList = sqlSession.selectList("CarInfo-Mapper.selectSearchCarList", dataParam);
		return carList;
	}
	@Override
	public int selectSearchCarListCount(SearchListCommand command) throws SQLException {
		int count = sqlSession.selectOne("CarInfo-Mapper.selectSearchCarListCount", command);
		return count;
	}
	@Override
	public CarVO selectCarByCarNum(String carNum) throws SQLException {
		CarVO car = sqlSession.selectOne("CarInfo-Mapper.selectCarById", carNum);
		return car;
	}
	@Override
	public void insertCar(CarVO car) throws SQLException {
		sqlSession.insert("CarInfo-Mapper.insertCar", car);
	}
	@Override
	public void updateCar(CarVO car) throws SQLException {
		sqlSession.update("CarInfo-Mapper.updateCar", car);
		
	}
	@Override
	public void deleteCar(String carNum) throws SQLException {
		sqlSession.delete("CarInfo-Mapper.deleteCar", carNum);
	}

	@Override
	public List<CarVO> selectCarList() {
		return null;
	}
	

}
