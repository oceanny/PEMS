package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.RecordDAO;
import com.spring.dto.RecordVO;

public class RecordServiceImpl implements RecordService {
	
	private RecordDAO recordDAO;
	public void setRecordDAO(RecordDAO recordDAO) {
		this.recordDAO = recordDAO;
	}

	@Override
	public Map<String, Object> getRecordList(SearchListCommand command) throws SQLException {
		List<RecordVO> recordList = recordDAO.selectSearchRecordList(command);
		
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCommand(command);
//		pageMaker.setTotalCount(recordDAO.selectSearchCarListCount(command));
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("recordList", recordList);
//		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

}
