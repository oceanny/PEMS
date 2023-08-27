package com.spring.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.MenuVO;

public interface MenuDAO {
	// 유저메인메뉴
	List<MenuVO> selectUserMainMenu() throws SQLException;
	
	//매니저메인메뉴
	List<MenuVO> selectManagerMainMenu() throws SQLException;

	// 서브메뉴
	List<MenuVO> selectSubMenu(String mCode) throws SQLException;

	// 메뉴정보
	MenuVO selectMenuByMenuCode(String mCode) throws SQLException;

	MenuVO selectMenuByMenuName(String mName) throws SQLException;
}
