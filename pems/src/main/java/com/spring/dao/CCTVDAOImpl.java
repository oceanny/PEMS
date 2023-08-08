package com.spring.dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.command.SearchListCommand;
import com.spring.dto.CCTVVO;

public class CCTVDAOImpl implements CCTVDAO{
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<CCTVVO> selectCCTVFileList(SearchListCommand command) throws Exception {
		int offset = command.getStartRowNum();
		int limit = command.getPerPageNum();
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<CCTVVO> cctvList = session.selectList("CCTV-Mapper.selectCCTVFileList",command,rowBounds);
		
		return cctvList;
	}

	@Override
	public int selectCCTVFileListCount(SearchListCommand command) throws SQLException {
		int count = session.selectOne("CCTV-Mapper.selectCCTVFileListCount",command);
		return count;
	}

	@Override
	public CCTVVO selectCCTVFileByCCTVFileNum(int cctvFileNum) throws SQLException {
		CCTVVO cctv = session.selectOne("CCTV-Mapper.selectCCTVFileByDate",cctvFileNum);
		return cctv;
	}

	@Override
	public void insertCCTV(CCTVVO cctv) throws SQLException {
		session.update("CCTV-Mapper.insertCCTV",cctv);
	}

	@Override
	public void updateCCTV(CCTVVO cctv) throws SQLException {
		session.update("CCTV-Mapper.updateCCTV",cctv);
	}

	@Override
	public void deleteCCTV(int cctvFileNum) throws SQLException {
		session.update("CCTV-Mapper.deleteCCTV",cctvFileNum);
	}

}
