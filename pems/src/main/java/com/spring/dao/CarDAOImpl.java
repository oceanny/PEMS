package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.CarVO;
import com.spring.dto.UserVO;

public class CarDAOImpl implements CarDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<CarVO> selectSearchCarList(SearchListCommand command) throws SQLException {
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();		
		RowBounds rowBounds = new RowBounds(offset,limit);		
		
		List<CarVO> carList = sqlSession.selectList("Car-Mapper.selectSearchCarList", command, rowBounds);
		return carList;
	}

	@Override
	public List<CarVO> selectUserCarList(SearchListCommand command) throws SQLException {
		List<CarVO> carList = sqlSession.selectList("Car-Mapper.selectUserCarList", command);
		return carList;
	}

	@Override
	public List<String> selectCarNumById(UserVO user) throws SQLException {
		List<String> carList = sqlSession.selectList("Car-Mapper.selectCarNumById", user.getUserId());
		return carList;
	}
	@Override
	public CarVO selectCarByCarNum(String carNum) throws SQLException {
		CarVO car = sqlSession.selectOne("Car-Mapper.selectCarByCarNum", carNum);
		return car;
	}
	@Override
	public void insertCar(CarVO car) throws SQLException {
		sqlSession.insert("Car-Mapper.insertCar", car);
	}
	@Override
	public void updateCar(CarVO car) throws SQLException {
		sqlSession.update("Car-Mapper.updateCar", car);
		
	}
	@Override
	public void deleteCar(String carNum) throws SQLException {
		sqlSession.delete("Car-Mapper.deleteCar", carNum);
	}

	@Override
	public int selectSearchCarListCount(SearchListCommand command) {
		int count = sqlSession.selectOne("Car-Mapper.selectSearchCarListCount",command);
		return count;
	}

	@Override
	public String selectIdByCarNum(String carNum) throws SQLException {
		String userId = sqlSession.selectOne("Car-Mapper.selectIdByCarNum", carNum);
		return userId;
	}

	@Override
	public CarVO selectElectByCarNum(String carNum) throws SQLException {
		CarVO car = sqlSession.selectOne("Car-Mapper.selectElectByCarNum", carNum);
		return car;
	}

}
