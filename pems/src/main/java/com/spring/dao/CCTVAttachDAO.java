package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.CCTVAttachVO;

public interface CCTVAttachDAO {

	public List<CCTVAttachVO> selectCCTVAttachesByCCTVFileNum(int cctvFileNum)throws SQLException;
	public CCTVAttachVO selectCCTVAttachByAno(int ano)throws SQLException;
	
	public void insertCCTVAttach(CCTVAttachVO cctvattach) throws SQLException;

	public void deleteCCTVAttach(int ano) throws SQLException;

	public void deleteAllCCTVAttach(int cctvFileNum)throws SQLException;
}
