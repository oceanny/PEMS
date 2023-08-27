package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.AbanVO;

public class AbanDAOImpl implements AbanDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<AbanVO> selectSearchAbanList(SearchListCommand command) throws SQLException {
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();		
		RowBounds rowBounds = new RowBounds(offset,limit);		
		
		List<AbanVO> abanList = sqlSession.selectList("Aban-Mapper.selectSearchAbanList", command, rowBounds);
		return abanList;
	}

	@Override
	public int selectSearchAbanListCount(SearchListCommand command) {
		int count = sqlSession.selectOne("Aban-Mapper.selectSearchAbanListCount",command);
		return count;
	}

	@Override
	public int selectTimesByCar(String carNum) throws SQLException {
		int times = sqlSession.selectOne("Aban-Mapper.selectTimesByCar", carNum);
		return times;
	}

	@Override
	public List<AbanVO> selectAbanByCarNum(String carNum) throws SQLException {
		List<AbanVO> abanList = sqlSession.selectList("Aban-Mapper.selectAbanByCarNum", carNum);
		return abanList;
	}

}
