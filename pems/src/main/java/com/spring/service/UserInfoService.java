package com.spring.service;

import java.sql.SQLException;

import com.spring.dto.UserInfoVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;
import com.spring.exception.WithdrawIdException;

public interface UserInfoService {
	
	public void login(String userId, String userPwd) throws NotFoundIdException, 
	InvalidPasswordException,
	SQLException;
	// 회원상세
	public UserInfoVO getUser(String userId) throws Exception;
	
	public UserInfoVO idFind(String name,String mail)throws Exception;
	
	public UserInfoVO idFindByName(String name)throws Exception;
	
	public UserInfoVO idFindByMail(String mail)throws Exception;

	// 회원등록
	public void regist(UserInfoVO user) throws Exception;

	// 회원수정
	public void modify(UserInfoVO user) throws Exception;

	// 회원탈퇴
	public void remove(String userId) throws Exception;
}
