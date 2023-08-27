package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.dto.ManageTargetVO;

public class ManageTargetDAOImpl implements ManageTargetDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<ManageTargetVO> selectWorkynByManageType(String manageType) throws Exception {
		List<ManageTargetVO> manageTarget = session.selectList("ManageTarget-Mapper.selectWorkynByManageType", manageType);
		return manageTarget;
	}

	@Override
	public void updateWorkYnByManageNum(ManageTargetVO manageTarget) throws SQLException {
		session.update("ManageTarget-Mapper.updateWorkYnByManageNum", manageTarget);
	}

}
