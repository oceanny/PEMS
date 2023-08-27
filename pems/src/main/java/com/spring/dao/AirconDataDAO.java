package com.spring.dao;

import java.sql.SQLException;

import com.spring.dto.AirconDataVO;

public interface AirconDataDAO {
	
	AirconDataVO selectAirconDataByaDataNum() throws SQLException;
	
	
	
	public void insertAirconData(AirconDataVO airconData) throws SQLException;
	
	int selectAirconDataSeqNext() throws SQLException;
}
