package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.UserVO;

public interface UserDAO {

	List<UserVO> selectSearchUserList(SearchListCommand command) throws SQLException;
	UserVO selectUserById(String userId) throws SQLException;
	
	int selectSearchUserListCount(SearchListCommand command);
	
	void insertUser(UserVO user) throws SQLException;
	void updateUser(UserVO user) throws SQLException;
	void deleteUser(String userId) throws SQLException;
}
