package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.SearchListCommand;

public interface RecordService {

	public Map<String, Object> getRecordList(SearchListCommand command) throws SQLException;
	
}
