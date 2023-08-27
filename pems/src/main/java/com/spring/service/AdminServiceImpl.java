package com.spring.service;

import java.sql.SQLException;

import com.spring.dao.AdminDAO;
import com.spring.dto.AdminVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;
import com.spring.exception.WithdrawIdException;

public class AdminServiceImpl implements AdminService{
	
	private AdminDAO adminDAO;
	
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO=adminDAO;
	}

	@Override
	public void login(String adminId, String adminPwd) throws NotFoundIdException, InvalidPasswordException, SQLException {
		AdminVO admin = adminDAO.selectAdminById(adminId);
		if (admin == null)
			throw new NotFoundIdException();
		if (!adminPwd.equals(admin.getAdminPwd()))
			throw new InvalidPasswordException();
		
		
	}

	@Override
	public AdminVO getAdmin(String adminId) throws Exception {
		
		AdminVO admin = adminDAO.selectAdminById(adminId);
		return admin;
	}

	@Override
	public void regist(AdminVO admin) throws Exception {
		
		adminDAO.insertAdmin(admin);
		
	}

	@Override
	public void modify(AdminVO admin) throws Exception {
		
		adminDAO.updateAdmin(admin);
		
	}

	@Override
	public void remove(String adminId) throws Exception {
		
		adminDAO.deleteAdmin(adminId);
		
	}

}
