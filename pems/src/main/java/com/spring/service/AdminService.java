package com.spring.service;

import java.sql.SQLException;

import com.spring.dto.AdminVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;
import com.spring.exception.WithdrawIdException;

public interface AdminService {
	
	public void login(String adminId, String adminPwd) throws NotFoundIdException, 
	InvalidPasswordException,
	SQLException;
	
	// 관리자상세
	public AdminVO getAdmin(String adminId) throws Exception;

	// 관리자등록
	public void regist(AdminVO admin) throws Exception;

	// 관리자수정
	public void modify(AdminVO admin) throws Exception;

	// 관리자탈퇴
	public void remove(String adminId) throws Exception;
}
