package com.spring.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.NoticeDAO;
import com.spring.dto.NoticeVO;


public class NoticeServiceImpl implements NoticeService{

	private NoticeDAO noticeDAO;
	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}
	
	@Override
	public NoticeVO read(int notiNum) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNotiNum(notiNum);
		noticeDAO.increaseViewCnt(notiNum);
		return notice;
	}
	
	@Override
	public NoticeVO getNotice(int notiNum) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNotiNum(notiNum);
		return notice;
	}
	
	@Override
	public Map<String, Object> getNoticeList(SearchListCommand command) throws SQLException {
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		
		List<NoticeVO> noticeList = noticeDAO.selectSearchNoticeList(command);
		
	

	//전체 notice 개수
	int totalCount = noticeDAO.selectSearchNoticeListCount(command);
	
	//pageMaker 생성
	PageMaker pageMaker = new PageMaker();
	pageMaker.setCommand(command);
	pageMaker.setTotalCount(totalCount);
	
	dataMap.put("noticeList", noticeList);
	dataMap.put("pageMaker", pageMaker);

	return dataMap;
}

	@Override
	public void regist(NoticeVO notice) throws SQLException {
		
		int notiNum = noticeDAO.selectNoticeSeqNext();
		notice.setNotiNum(notiNum);
		noticeDAO.insertNotice(notice);
	}

	@Override
	public void modify(NoticeVO notice) throws SQLException {
	
		noticeDAO.updateNotice(notice);
	}

	@Override
	public void remove(int notiNum) throws SQLException {
		noticeDAO.deleteNotice(notiNum);
	}
}
	
