package com.spring.service;

import java.sql.SQLException;

import com.spring.dao.UserDAO;
import com.spring.dao.UserInfoDAO;
import com.spring.dto.UserInfoVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;

public class UserInfoServiceImpl implements UserInfoService{
	
	private UserInfoDAO userinfoDAO;
	
	public void setUserInfoDAO(UserInfoDAO userinfoDAO) {
		this.userinfoDAO = userinfoDAO;
	}

	@Override
	public void login(String userId, String userPwd) throws NotFoundIdException, InvalidPasswordException, SQLException {
		UserInfoVO user = userinfoDAO.selectUserById(userId);
		if (user == null)
			throw new NotFoundIdException();
		if (!userPwd.equals(user.getUserPwd()))
			throw new InvalidPasswordException();
		
	}

	@Override
	public UserInfoVO getUser(String userId) throws Exception {
		
		UserInfoVO user = userinfoDAO.selectUserById(userId);
		return user;
	}

	@Override
	public void regist(UserInfoVO user) throws Exception {
		
		userinfoDAO.insertUser(user);
		
	}

	@Override
	public void modify(UserInfoVO user) throws Exception {
		
		userinfoDAO.updateUser(user);
		
	}

	@Override
	public void remove(String userId) throws Exception {
		
		userinfoDAO.deleteUser(userId);
		
	}


	@Override
	public UserInfoVO idFindByName(String name) throws Exception {
		
		UserInfoVO user = userinfoDAO.selectUserByName(name);

		return user;
	}

	@Override
	public UserInfoVO idFindByMail(String mail) throws Exception {
		
		UserInfoVO user = userinfoDAO.selectUserByName(mail);
		
		return user;
	}
	@Override
	public UserInfoVO idFind(String name, String mail) throws Exception {
		
		UserInfoVO user =userinfoDAO.selectUserByName(name);
		
		UserInfoVO user1 = this.idFindByName(name);
		UserInfoVO user2= this.idFindByMail(mail);
		
		if(user1.equals(user2))  
			user = user1;
		
		return user;
	}

}
