package com.spring.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.AdminVO;

public class AdminDAOImpl implements AdminDAO{
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public AdminVO selectAdminById(String adminId) throws SQLException {
		AdminVO admin = sqlSession.selectOne("Admin-Mapper.selectAdminById",adminId);
		return admin;
	}

	@Override
	public void insertAdmin(AdminVO admin) throws SQLException {
		sqlSession.update("Admin-Mapper.insertAdmin",admin);
	}

	@Override
	public void updateAdmin(AdminVO admin) throws SQLException {
		sqlSession.update("Admin-Mapper.updateAdmin",admin);
	}

	@Override
	public void deleteAdmin(String adminId) throws SQLException {
		sqlSession.update("Admin-Mapper.deletetAdmin",adminId);
	}

}
