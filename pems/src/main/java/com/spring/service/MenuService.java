package com.spring.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.dto.MenuVO;

public interface MenuService {

	List<MenuVO> getUserMainMenuList()throws SQLException;
	List<MenuVO> getManagerMainMenuList()throws SQLException;
	
	List<MenuVO> getSubMenuList(String menuCode)throws SQLException;
	
	MenuVO getMenuByMenuCode(String menuCode)throws SQLException;
	
	MenuVO getMenuByMenuName(String menuName)throws SQLException;
}
