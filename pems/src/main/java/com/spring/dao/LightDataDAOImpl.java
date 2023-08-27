package com.spring.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.LightDataVO;

public class LightDataDAOImpl implements LightDataDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public LightDataVO selectLightDataBylDataNum() throws SQLException {
		LightDataVO lightData = session.selectOne("LightData-Mapper.selectLightDataBylDataNum");
		return lightData;
	}
	
	@Override
	public void insertLightData(LightDataVO lightData) throws SQLException {
		session.update("LightData-Mapper.insertLightData", lightData);
	}
	
	@Override
	public int selectLightDataSeqNext() throws SQLException {
		int seq_num=session.selectOne("LightData-Mapper.selectLightDataSeqNext");
		return seq_num;
	}

}
