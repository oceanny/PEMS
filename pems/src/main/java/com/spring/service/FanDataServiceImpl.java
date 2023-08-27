package com.spring.service;

import com.spring.dao.FanDataDAO;
import com.spring.dto.FanDataVO;

public class FanDataServiceImpl implements FanDataService{
	
	private FanDataDAO fanDataDAO;
	public void setFanDataDAO(FanDataDAO fanDataDAO) {
		this.fanDataDAO = fanDataDAO;
	}
	
	@Override
	public FanDataVO getFanData() throws Exception {
		FanDataVO fanData = fanDataDAO.selectFanDataBylDataNum();
		
		return fanData;
	}

	@Override
	public void regist(FanDataVO fanData) throws Exception {
		int fDataNum = fanDataDAO.selectFanDataSeqNext();
		fanData.setfDataNum(fDataNum);
		fanDataDAO.insertFanData(fanData);
	}

}
