package com.spring.dao;

import java.sql.SQLException;

import com.spring.dto.FanDataVO;

public interface FanDataDAO {
	
	FanDataVO selectFanDataBylDataNum() throws SQLException;
	
	public void insertFanData(FanDataVO fanData) throws SQLException;
	
	int selectFanDataSeqNext() throws SQLException;
}
