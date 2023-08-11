package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.RecordVO;

public interface RecordDAO {

	List<RecordVO> selectSearchRecordList(SearchListCommand command) throws SQLException;
	String selectNowAreaNum(String carNum) throws SQLException;
}
