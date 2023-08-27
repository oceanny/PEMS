package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.ChargeVO;

public class ChargeDAOImpl implements ChargeDAO {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<ChargeVO> selectSearchCharRecordList(SearchListCommand command) throws SQLException {
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();		
		RowBounds rowBounds = new RowBounds(offset,limit);		
				
		List<ChargeVO> chargeList = sqlSession.selectList("Charge-Mapper.selectSearchCharRecordList", command, rowBounds);
		return chargeList;
	}

	@Override
	public List<ChargeVO> selectUsingChar(SearchListCommand command) throws SQLException {
		List<ChargeVO> chargeList  = sqlSession.selectList("Charge-Mapper.selectUsingChar", command);
		return chargeList;
	}

	@Override
	public int selectSearchCharRecordListCount(SearchListCommand command) throws SQLException {
		int count = sqlSession.selectOne("Charge-Mapper.selectSearchCharRecordListCount", command);
		return count;
	}

	@Override
	public void reserveCharger(ChargeVO charge) throws SQLException {
		sqlSession.update("Charge-Mapper.reserveCharger", charge);
	}

	@Override
	public void updateCharger(ChargeVO charge) throws SQLException {
		sqlSession.update("Charge-Mapper.updateCharger", charge);
	}

	@Override
	public ChargeVO selectChargerByCharNum(String charNum) throws SQLException {
		ChargeVO charge = sqlSession.selectOne("Charge-Mapper.selectChargerByCharNum", charNum);
		return charge;
	}

}
