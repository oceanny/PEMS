package com.spring.service;

import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.CCTVAttachVO;
import com.spring.dto.CCTVVO;

public interface CCTVService {
	
	public Map<String, Object> getCCTVFileList(SearchListCommand command)throws Exception;
	
	public CCTVVO getCCTVFile(int cctvFileNum) throws Exception;
	
	public void regist(CCTVVO cctv) throws Exception;
	
	public void modify(CCTVVO cctv) throws Exception;
	
	public void remove(int cctvFileNum) throws Exception;
	
	CCTVAttachVO getCCTVAttachByAno(int ano) throws Exception;
	
	void removeCCTVAttachByAno(int ano) throws Exception; 
}
