package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.CarDAO;
import com.spring.dao.RecordDAO;
import com.spring.dao.UserDAO;
import com.spring.dto.CarVO;
import com.spring.dto.UserVO;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	private CarDAO carDAO;
	
	public void setCarDAO(CarDAO carDAO) {
		this.carDAO = carDAO;
	}
	
	private RecordDAO recordDAO;
	
	public void setRecordDAO(RecordDAO recordDAO) {
		this.recordDAO = recordDAO;
	}
	
	
	@Override
	public Map<String, Object> getUserList(SearchListCommand command) throws SQLException {
		List<UserVO> userList = userDAO.selectSearchUserList(command);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(userDAO.selectSearchUserListCount(command));
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("userList", userList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}
	
	private void addCarNum(UserVO user) throws SQLException {
		if (user == null) return;
		List<String> carList = carDAO.selectCarNumById(user);
		if (carList == null) user.setCarNum(null);
		else {
			String carNum = "";
			int i = 1;
			for (String car : carList) {
				carNum += car;
				if (i < carList.size()) {
					carNum += "　";
					i++;
				}
			}
			user.setCarNum(carNum);
		}
	}
	private void addAreaNum(UserVO user) throws SQLException {
		if (user == null) return;
		List<String> carList = carDAO.selectCarNumById(user);
		if (carList == null) user.setAreaNum("");
		else {
			String areaNum = "";
			int i = 1;
			int j = 1;
			for (String car : carList) {
				String areaNumTemp = recordDAO.selectNowAreaNum(car);
				if (areaNumTemp == null) {
					areaNumTemp = null;
					i++;
					j++;
					continue;
				}
				areaNum += "(" + i + ")" + areaNumTemp;
				i++;
				if (j < carList.size()) {
					areaNum += "　";
					j++;
				}
			}
			user.setAreaNum(areaNum);
		}
	}
	@Override
	public Map<String, Object> getUserListByCar(SearchListCommand command) throws SQLException {
		List<UserVO> userList = userDAO.selectSearchUserList(command);

		if (userList != null) {
			for (UserVO user : userList) {
				addCarNum(user);
				addAreaNum(user);
			}
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(userDAO.selectSearchUserListCount(command));

		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("userList", userList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}
	
	@Override
	public void regist(UserVO user) throws SQLException {
		userDAO.insertUser(user);
	}

	@Override
	public void modify(UserVO user) throws SQLException {
		userDAO.updateUser(user);

	}

	@Override
	public void remove(String userId) throws SQLException {
		userDAO.deleteUser(userId);
	}


}
