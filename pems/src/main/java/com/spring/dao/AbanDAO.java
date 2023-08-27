package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.AbanVO;

public interface AbanDAO {

	// 방치 차량 목록 전체
	List<AbanVO> selectSearchAbanList(SearchListCommand command) throws SQLException;
	int selectSearchAbanListCount(SearchListCommand command);
	// 차량 별 방치 횟수
	int selectTimesByCar(String carNum) throws SQLException;
	// 차량 별 방치 번호 목록
	List<AbanVO> selectAbanByCarNum(String carNum) throws SQLException;
}
