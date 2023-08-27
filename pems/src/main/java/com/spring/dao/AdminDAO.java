package com.spring.dao;

import java.sql.SQLException;

import com.spring.dto.AdminVO;

public interface AdminDAO {
	
	// 관리자정보 조회
	AdminVO selectAdminById(String adminId) throws SQLException;
	
	// 관리자 추가
	public void insertAdmin(AdminVO admin) throws SQLException;
	
	// 관리자 수정
	public void updateAdmin(AdminVO admin) throws SQLException;

	// 관리자정보 삭제
	void deleteAdmin(String adminId) throws SQLException;
	

}
