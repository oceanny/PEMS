package com.spring.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.UserVO;

public class UserDAOImpl implements UserDAO {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<UserVO> selectSearchUserList(SearchListCommand command) throws SQLException {
		
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<UserVO> userList = sqlSession.selectList("User-Mapper.selectSearchUserList", command, rowBounds);	
			
		return userList;
	}
	
	@Override
	public int selectSearchUserListCount(SearchListCommand command) {
		int count = sqlSession.selectOne("User-Mapper.selectSearchUserListCount", command);
		return count;
	}
	
	@Override
	public UserVO selectUserById(String userId) throws SQLException {
		UserVO user = sqlSession.selectOne("User-Mapper.selectUserById", userId);
		return user;
	}

	@Override
	public void insertUser(UserVO user) throws SQLException {
		sqlSession.insert("User-Mapper.insertUser", user);
		
	}

	@Override
	public void updateUser(UserVO user) throws SQLException {
		sqlSession.update("User-Mapper.updateUser", user);
		
	}

	@Override
	public void deleteUser(String userId) throws SQLException {
		sqlSession.delete("User-Mapper.deleteUser", userId);
		
	}



}
