package com.spring.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.FanDataVO;
import com.spring.dto.LightDataVO;

public class FanDataDAOImpl implements FanDataDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public FanDataVO selectFanDataBylDataNum() throws SQLException {
		FanDataVO fanData = session.selectOne("FanData-Mapper.selectFanDataBylDataNum");
		return fanData;
	}
	
	@Override
	public void insertFanData(FanDataVO fanData) throws SQLException {
		session.update("FanData-Mapper.insertFanData", fanData);
	}
	
	@Override
	public int selectFanDataSeqNext() throws SQLException {
		int seq_num=session.selectOne("FanData-Mapper.selectfanDataSeqNext");
		return seq_num;
	}

}
