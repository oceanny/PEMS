package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO{

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	@Override
	public List<NoticeVO> selectSearchNoticeList(SearchListCommand command) throws SQLException{

	int offset=command.getStartRowNum();
		int limit=command.getPerPageNum();		
		RowBounds rowBounds=new RowBounds(offset,limit);		
		
		List<NoticeVO> NoticeList=
				session.selectList("Notice-Mapper.selectSearchNoticeList",command,rowBounds);
		
		return NoticeList;
		
	}
	@Override
	public int selectSearchNoticeListCount(SearchListCommand command) throws SQLException {
		int count=session.selectOne("Notice-Mapper.selectSearchNoticeListCount",command);
		return count;
	}
	@Override
	public NoticeVO selectNoticeByNotiNum(int notiNum) throws SQLException {
		NoticeVO notice=session.selectOne("Notice-Mapper.selectNoticeByNotiNum",notiNum);
		return notice;
	}
	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		session.update("Notice-Mapper.insertNotice",notice);
	}
	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		session.update("Notice-Mapper.updateNotice",notice);
	}
	@Override
	public void deleteNotice(int notiNum) throws SQLException {
		session.update("Notice-Mapper.deleteNotice",notiNum);
	}
	@Override
	public void increaseViewCnt(int notiNum) throws SQLException {
		session.update("Notice-Mapper.increaseViewCnt",notiNum);

	}
	@Override
	public int selectNoticeSeqNext() throws SQLException {
		int seq_num=session.selectOne("Notice-Mapper.selectNoticeSeqNext");
		return seq_num;
	}

	@Override
	public NoticeVO selectNoticeByImage(String imageFile) throws SQLException {
		return null;
	}
	
}