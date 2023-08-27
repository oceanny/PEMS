package com.spring.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.LightDataVO;

public interface LightDataDAO {
	
	LightDataVO selectLightDataBylDataNum() throws SQLException;
	
	
	
	public void insertLightData(LightDataVO lightData) throws SQLException;
	
	int selectLightDataSeqNext() throws SQLException;
}
