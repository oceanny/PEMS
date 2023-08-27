package com.spring.dao;

import java.sql.SQLException;

import com.spring.dto.UserInfoVO;

public interface UserInfoDAO {
	
	// 회원정보 조회
	UserInfoVO selectUserById(String userid) throws SQLException;
	// 이름으로 회원 아이디 찾기
	UserInfoVO selectUserByName(String name)throws SQLException;	
	// 메일로 회원 아이디 찾기
	UserInfoVO selectUserByMail(String mail)throws SQLException;
	// 회원 추가
	public void insertUser(UserInfoVO user) throws SQLException;
	
	// 회원 수정
	public void updateUser(UserInfoVO user) throws SQLException;

	// 회원정보 삭제
	void deleteUser(String userid) throws SQLException;
	

}
