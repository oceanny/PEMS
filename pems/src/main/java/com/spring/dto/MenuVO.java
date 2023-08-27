package com.spring.dto;

public class MenuVO {
	private String menuCode; // 메뉴 코드
	private String menuName; // 메뉴 이름
	private String menuUrl;  // 메뉴  url
	private String mText; // javaScript
	private String upcode; // 상위메뉴 코드
	private int menuLevel; //메뉴 레벨
	
	public String getMenuCode() {
		return menuCode;
	}
	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public String getmText() {
		return mText;
	}
	public void setmText(String mText) {
		this.mText = mText;
	}
	public String getUpcode() {
		return upcode;
	}
	public void setUpcode(String upcode) {
		this.upcode = upcode;
	}
	public int getMenuLevel() {
		return menuLevel;
	}
	public void setMenuLevel(int menuLevel) {
		this.menuLevel = menuLevel;
	}
	
	
	
	
}
