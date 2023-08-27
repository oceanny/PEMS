package com.spring.service;

import java.sql.SQLException;
import java.util.Map;

import com.spring.command.SearchListCommand;
import com.spring.dto.NoticeVO;

public interface NoticeService {
	
	
	// 목록조회	
	Map<String,Object> getNoticeList(SearchListCommand command)throws SQLException;
	
	// 상세보기
	NoticeVO read(int notiNum)throws SQLException;	
	NoticeVO getNotice(int notiNum)throws SQLException;
		
	// 등록
	void regist(NoticeVO notice)throws SQLException;
		
	// 수정
	void modify(NoticeVO notice)throws SQLException;
	
	// 삭제
	void remove(int notiNum)throws SQLException;
}
