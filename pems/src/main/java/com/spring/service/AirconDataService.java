package com.spring.service;

import com.spring.dto.AirconDataVO;

public interface AirconDataService {
	
	//최근 온도, 습도 데이터 조회
	public AirconDataVO getAirconData()throws Exception;
	
	//컨트롤러로 새로운 데이터 등록
	public void regist(AirconDataVO airconData) throws Exception;
}
