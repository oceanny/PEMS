package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.command.SearchListCommand;
import com.spring.dto.NoticeVO;

public interface NoticeDAO {

	
	List<NoticeVO> selectSearchNoticeList(SearchListCommand command) throws SQLException;

	int selectSearchNoticeListCount(SearchListCommand command) throws SQLException;

	NoticeVO selectNoticeByNotiNum(int notiNum) throws SQLException;
	
	NoticeVO selectNoticeByImage(String imageFile) throws SQLException;

	void insertNotice(NoticeVO notice) throws SQLException;

	void updateNotice(NoticeVO notice) throws SQLException;

	void deleteNotice(int notiNum) throws SQLException;

	void increaseViewCnt(int notiNum) throws SQLException;

	int selectNoticeSeqNext() throws SQLException;
}
