package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.CCTVVO;

public interface CCTVDAO {

	List<CCTVVO> selectSearchCCTVFileList(SearchListCommand command) throws Exception;
	
	int selectSearchCCTVFileListCount(SearchListCommand command) throws SQLException;
	
	CCTVVO selectCCTVFileByCCTVFileNum(int cctvFileNum) throws SQLException;
	
	int selectCCTVSeqNext() throws SQLException;
	
	public void insertCCTV(CCTVVO cctv) throws SQLException;
	
	public void updateCCTV(CCTVVO cctv) throws SQLException;
	
	void deleteCCTV(int cctvFileNum) throws SQLException;
}
