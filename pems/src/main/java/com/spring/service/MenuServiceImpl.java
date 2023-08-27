package com.spring.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.dao.MenuDAO;
import com.spring.dto.MenuVO;

public class MenuServiceImpl implements MenuService{
		
	private MenuDAO menuDAO;
	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}
	
	@Override
	public List<MenuVO> getUserMainMenuList() throws SQLException {
		List<MenuVO> menuList = menuDAO.selectUserMainMenu();
		return menuList;
	}
	
	@Override
	public List<MenuVO> getManagerMainMenuList() throws SQLException {
		List<MenuVO> menuList = menuDAO.selectManagerMainMenu();
		return menuList;
	}

	@Override
	public List<MenuVO> getSubMenuList(String menuCode) throws SQLException {
		List<MenuVO> menuList  = menuDAO.selectSubMenu(menuCode);
		return menuList;
	}

	@Override
	public MenuVO getMenuByMenuCode(String menuCode) throws SQLException {
		MenuVO menu= menuDAO.selectMenuByMenuCode(menuCode);
		return menu;
	}

	@Override
	public MenuVO getMenuByMenuName(String menuName) throws SQLException {
		MenuVO menu  = menuDAO.selectMenuByMenuName(menuName);
		return menu;
	}
}
