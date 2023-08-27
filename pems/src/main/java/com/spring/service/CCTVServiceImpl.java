package com.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.CCTVAttachDAO;
import com.spring.dao.CCTVDAO;
import com.spring.dto.CCTVAttachVO;
import com.spring.dto.CCTVVO;

public class CCTVServiceImpl implements CCTVService{
	
	private CCTVDAO cctvDAO;
	public void setCctvDAO(CCTVDAO cctvDAO) {
		this.cctvDAO = cctvDAO;
	}
	
	private CCTVAttachDAO cctvattachDAO;
	public void setCctvattachDAO(CCTVAttachDAO cctvattachDAO) {
		this.cctvattachDAO = cctvattachDAO;
	}

	@Override
	public Map<String, Object> getCCTVFileList(SearchListCommand command) throws Exception {
		List<CCTVVO> cctvList = cctvDAO.selectSearchCCTVFileList(command);
		
		int totalCount = cctvDAO.selectSearchCCTVFileListCount(command);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(totalCount);
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("cctvList", cctvList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public CCTVVO getCCTVFile(int cctvFileNum) throws Exception {
		CCTVVO cctv = cctvDAO.selectCCTVFileByCCTVFileNum(cctvFileNum);
		
		return cctv;
	}

	@Override
	public void regist(CCTVVO cctv) throws Exception {
		int cctvFileNum = cctvDAO.selectCCTVSeqNext();
		cctv.setCctvFileNum(cctvFileNum);
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

	@Override
	public CCTVAttachVO getCCTVAttachByAno(int ano) throws Exception {
		CCTVAttachVO cctvattach = cctvattachDAO.selectCCTVAttachByAno(ano);
		return cctvattach;
	}

	@Override
	public void removeCCTVAttachByAno(int ano) throws Exception {
		cctvattachDAO.deleteCCTVAttach(ano);
	}

}
