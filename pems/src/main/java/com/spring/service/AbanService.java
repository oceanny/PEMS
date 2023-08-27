package com.spring.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.AbanVO;

public interface AbanService {

	public Map<String, Object> getAban(String carNum) throws SQLException;
	public Map<String, Object> getAbanList(SearchListCommand command) throws SQLException;
	
}
