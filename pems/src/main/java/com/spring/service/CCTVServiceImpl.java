package com.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.CCTVDAO;
import com.spring.dto.CCTVVO;

public class CCTVServiceImpl implements CCTVService{
	
	private CCTVDAO cctvDAO;
	public void setCctvDAO(CCTVDAO cctvDAO) {
		this.cctvDAO = cctvDAO;
	}

	@Override
	public Map<String, Object> getCCTVFileList(SearchListCommand command) throws Exception {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<CCTVVO> cctvList = cctvDAO.selectCCTVFileList(command);
		dataMap.put("cctvList", cctvList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(cctvDAO.selectCCTVFileListCount(command));
		dataMap.put("dataMap", pageMaker);
		
		return dataMap;
	}

	@Override
	public CCTVVO getCCTVFile(int cctvFileNum) throws Exception {
		CCTVVO cctv = cctvDAO.selectCCTVFileByCCTVFileNum(cctvFileNum);
		
		return cctv;
	}

	@Override
	public void regist(CCTVVO cctv) throws Exception {
		cctvDAO.insertCCTV(cctv);
	}

	@Override
	public void modify(CCTVVO cctv) throws Exception {
		cctvDAO.updateCCTV(cctv);
	}

	@Override
	public void remove(int cctvFileNum) throws Exception {
		cctvDAO.deleteCCTV(cctvFileNum);
	}

}
