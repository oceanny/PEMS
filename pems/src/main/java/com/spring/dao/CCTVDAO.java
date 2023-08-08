package com.spring.dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.CCTVVO;

public interface CCTVDAO {

	List<CCTVVO> selectCCTVFileList(SearchListCommand command) throws Exception;
	
	int selectCCTVFileListCount(SearchListCommand command) throws SQLException;
	
	CCTVVO selectCCTVFileByCCTVFileNum(int CCTVFileNum) throws SQLException;
	
	public void insertCCTV(CCTVVO cctv) throws SQLException;
	
	public void updateCCTV(CCTVVO cctv) throws SQLException;
	
	void deleteCCTV(int cctvFileNum) throws SQLException;
}
