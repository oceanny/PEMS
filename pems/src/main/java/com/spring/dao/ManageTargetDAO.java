package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.ManageTargetVO;

public interface ManageTargetDAO {
	public List<ManageTargetVO> selectWorkynByManageType(String manageType) throws Exception;
	
	public void updateWorkYnByManageNum(ManageTargetVO manageTarget) throws SQLException;	
}
