package com.spring.service;

import com.spring.dao.LightDataDAO;
import com.spring.dto.LightDataVO;

public class LightDataServiceImpl implements LightDataService{
	
	private LightDataDAO lightDataDAO;
	public void setLightDataDAO(LightDataDAO lightDataDAO) {
		this.lightDataDAO = lightDataDAO;
	}
	
	@Override
	public LightDataVO getLightData() throws Exception {
		LightDataVO lightData = lightDataDAO.selectLightDataBylDataNum();
		
		return lightData;
	}

	@Override
	public void regist(LightDataVO lightData) throws Exception {
		int lDataNum = lightDataDAO.selectLightDataSeqNext();
		lightData.setlDataNum(lDataNum);
		lightDataDAO.insertLightData(lightData);
	}

}
