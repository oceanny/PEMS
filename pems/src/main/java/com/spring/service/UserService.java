package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.CarVO;
import com.spring.dto.UserVO;

public interface UserService {

	Map<String, Object> getUserList(SearchListCommand command) throws SQLException;
	Map<String, Object> getUserListByCar(SearchListCommand command) throws SQLException;
	
	void regist(UserVO user) throws SQLException;
	void modify(UserVO user) throws SQLException;
	void remove(String userId) throws SQLException;
}
