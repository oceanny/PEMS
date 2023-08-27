package com.spring.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.UserInfoVO;

public class UserInfoDAOImpl implements UserInfoDAO{
	
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public UserInfoVO selectUserById(String userid) throws SQLException {
		UserInfoVO user = sqlSession.selectOne("Userinfo-Mapper.selectUserById",userid);
		return user;
	}

	@Override
	public void insertUser(UserInfoVO user) throws SQLException {
		sqlSession.update("Userinfo-Mapper.insertUser",user);
	}

	@Override
	public void updateUser(UserInfoVO user) throws SQLException {
		sqlSession.update("Userinfo-Mapper.updateUser",user);
	}

	@Override
	public void deleteUser(String userid) throws SQLException {
		sqlSession.update("Userinfo-Mapper.deletetUser",userid);
	}


	@Override
	public UserInfoVO selectUserByName(String name) throws SQLException {
		UserInfoVO user = sqlSession.selectOne("Userinfo-Mapper.selectUserByName",name);
		return user;
	}


	@Override
	public UserInfoVO selectUserByMail(String mail) throws SQLException {
		UserInfoVO user = sqlSession.selectOne("Userinfo-Mapper.selectUserByMail",mail);
		return user;
	}

}
