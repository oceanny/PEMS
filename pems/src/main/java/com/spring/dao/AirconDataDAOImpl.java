package com.spring.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.AirconDataVO;
import com.spring.dto.LightDataVO;

public class AirconDataDAOImpl implements AirconDataDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public AirconDataVO selectAirconDataByaDataNum() throws SQLException {
		AirconDataVO airconData = session.selectOne("AirconData-Mapper.selectAirconDataByaDataNum");
		return airconData;
	}
	
	@Override
	public void insertAirconData(AirconDataVO airconData) throws SQLException {
		session.update("AirconData-Mapper.insertAirconData", airconData);
	}
	
	@Override
	public int selectAirconDataSeqNext() throws SQLException {
		int seq_num=session.selectOne("AirconData-Mapper.selectAirconDataSeqNext");
		return seq_num;
	}

}
