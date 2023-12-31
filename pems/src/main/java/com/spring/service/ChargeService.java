package com.spring.service;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.ChargeVO;

public interface ChargeService {

	Map<String, Object> getCharRecordList(SearchListCommand command) throws SQLException;
	Map<String, Object> getUsingCharList(SearchListCommand command) throws SQLException;
	Map<String, Object> getNowCharList(SearchListCommand command) throws SQLException;
	
	ChargeVO getCharger(String charNum) throws SQLException;
	ChargeVO getUsingCar(String carNum) throws SQLException;
	String getRecentRecordNum() throws Exception;
	void reserve(ChargeVO charge) throws SQLException;
}
