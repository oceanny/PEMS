package com.spring.service;

import com.spring.dao.AirconDataDAO;
import com.spring.dto.AirconDataVO;

public class AirconDataServiceImpl implements AirconDataService{
	
	private AirconDataDAO airconDataDAO;
	public void setAirconDataDAO(AirconDataDAO airconDataDAO) {
		this.airconDataDAO = airconDataDAO;
	}
	
	@Override
	public AirconDataVO getAirconData() throws Exception {
		AirconDataVO airconData = airconDataDAO.selectAirconDataByaDataNum();
		
		return airconData;
	}

	@Override
	public void regist(AirconDataVO airconData) throws Exception {
		int aDataNum = airconDataDAO.selectAirconDataSeqNext();
		airconData.setaDataNum(aDataNum);
		airconDataDAO.insertAirconData(airconData);
	}

}
