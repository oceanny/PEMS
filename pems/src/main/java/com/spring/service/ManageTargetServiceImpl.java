package com.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.dao.ManageTargetDAO;
import com.spring.dto.ManageTargetVO;

public class ManageTargetServiceImpl implements ManageTargetService{

	private ManageTargetDAO manageTargetDAO;
	public void setManageTargetDAO(ManageTargetDAO manageTargetDAO) {
		this.manageTargetDAO = manageTargetDAO;
	}
	
	@Override
	public Map<String, Object> getManageTargetList(String manageType) throws Exception {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<ManageTargetVO> manageTargetList = manageTargetDAO.selectWorkynByManageType(manageType);
		dataMap.put("manageTargetList", manageTargetList);
		
		return dataMap;
	}

	@Override
	public void modifyWorkynByManageNum(ManageTargetVO manageTarget) throws Exception {
		manageTargetDAO.updateWorkYnByManageNum(manageTarget);
	}

}
