package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.RecordVO;

public class RecordDAOImpl implements RecordDAO {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<RecordVO> selectSearchRecordList(SearchListCommand command) throws SQLException {
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();		
		RowBounds rowBounds = new RowBounds(offset,limit);		
		
		List<RecordVO> recordList = sqlSession.selectList("Record-Mapper.selectSearchRecordList", command, rowBounds);
		return recordList;
	}

	@Override
	public String selectNowAreaNum(String carNum) throws SQLException {
		String areaNum = sqlSession.selectOne("Record-Mapper.selectNowAreaNum", carNum);
		return areaNum;
	}

	@Override
	public RecordVO selectRecordByNum(String recordNum) throws SQLException {
		RecordVO record = sqlSession.selectOne("Record-Mapper.selectRecordByNum", recordNum);
		return record;
	}

}
