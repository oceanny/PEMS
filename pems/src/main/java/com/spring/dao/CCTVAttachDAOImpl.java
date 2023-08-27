package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.CCTVAttachVO;

public class CCTVAttachDAOImpl implements CCTVAttachDAO{
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<CCTVAttachVO> selectCCTVAttachesByCCTVFileNum(int cctvFileNum) throws SQLException {
		List<CCTVAttachVO> attachList = sqlSession.selectList("CCTVAttach-Mapper.selectCCTVAttachByCCTVFileNum",cctvFileNum);
		return attachList;
	}

	@Override
	public CCTVAttachVO selectCCTVAttachByAno(int ano) throws SQLException {
		CCTVAttachVO cctvattach = sqlSession.selectOne("CCTVAttach-Mapper.selectCCTVAttachByAno",ano);
		return cctvattach;
	}

	@Override
	public void insertCCTVAttach(CCTVAttachVO cctvattach) throws SQLException {
		sqlSession.update("CCTVAttach-Mapper.insertCCTVAttach",cctvattach);
	}

	@Override
	public void deleteCCTVAttach(int ano) throws SQLException {
		sqlSession.update("CCTVAttach-Mapper.deleteCCTVAttach",ano);
	}

	@Override
	public void deleteAllCCTVAttach(int cctvFileNum) throws SQLException {
		sqlSession.update("CCTVAttach-Mapper.deleteAllCCTVAttach",cctvFileNum);
	}

}
