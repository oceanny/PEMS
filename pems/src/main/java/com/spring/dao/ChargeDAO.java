package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.ChargeVO;

public interface ChargeDAO {

	List<ChargeVO> selectSearchCharRecordList(SearchListCommand command) throws SQLException;
	int selectSearchCharRecordListCount(SearchListCommand command) throws SQLException;
	
	List<ChargeVO> selectUsingChar(SearchListCommand command) throws SQLException;
	
	ChargeVO selectChargerByCharNum(String charNum) throws SQLException;
	void reserveCharger(ChargeVO charge) throws SQLException;
	void updateCharger(ChargeVO charge) throws SQLException;
}
