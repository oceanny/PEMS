package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.AbanDAO;
import com.spring.dao.CarDAO;
import com.spring.dao.RecordDAO;
import com.spring.dto.AbanVO;
import com.spring.dto.RecordVO;

public class AbanServiceImpl implements AbanService {

	private AbanDAO abanDAO;
	public void setAbanDAO(AbanDAO abanDAO) {
		this.abanDAO = abanDAO;
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
	public Map<String, Object> getAban(String carNum) throws SQLException {
		List<AbanVO> abanList = abanDAO.selectAbanByCarNum(carNum);
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("abanList", abanList);
		return dataMap;
	}

	private void addUser(AbanVO aban) throws SQLException {
		if (aban == null) return;
		String carNum = aban.getCarNum();
		String userId = carDAO.selectIdByCarNum(carNum);
		aban.setUserId(userId);
	}
	
	private void addDate(AbanVO aban) throws SQLException {
		if (aban == null) return;
		String recordNum = aban.getRecordNum();
		RecordVO record = recordDAO.selectRecordByNum(recordNum);
		aban.setEntDate(record.getEntDate());
		aban.setOutDate(record.getOutDate());
	}
	
	@Override
	public Map<String, Object> getAbanList(SearchListCommand command) throws SQLException {
		List<AbanVO> abanList = abanDAO.selectSearchAbanList(command);
		
		if (abanList != null) {
			for (AbanVO aban : abanList) {
				addUser(aban);
				addDate(aban);
			}
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(abanDAO.selectSearchAbanListCount(command));
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("abanList", abanList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

}
