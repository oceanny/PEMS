package com.spring.service;

import com.spring.dto.LightDataVO;

public interface LightDataService {
	
	//최근 조도 데이터 조회
	public LightDataVO getLightData()throws Exception;
	
	//컨트롤러로 새로운 데이터 등록
	public void regist(LightDataVO lightData) throws Exception;
}
