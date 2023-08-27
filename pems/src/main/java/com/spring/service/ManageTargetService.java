package com.spring.service;

import java.util.Map;

import com.spring.dto.ManageTargetVO;

public interface ManageTargetService {

	//workyn 데이터 가져오기
	public Map<String, Object> getManageTargetList(String manageType) throws Exception;
	
	//workyn 데이터 수정(manageNum)
	public void modifyWorkynByManageNum(ManageTargetVO manageTarget) throws Exception;
}
