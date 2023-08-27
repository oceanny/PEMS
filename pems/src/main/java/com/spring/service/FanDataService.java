package com.spring.service;

import com.spring.dto.FanDataVO;

public interface FanDataService {
	
	//최근 조도 데이터 조회
	public FanDataVO getFanData()throws Exception;
	
	//컨트롤러로 새로운 데이터 등록
	public void regist(FanDataVO fanData) throws Exception;
}
