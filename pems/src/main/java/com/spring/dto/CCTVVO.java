package com.spring.dto;

import java.util.Date;
import java.util.List;

public class CCTVVO {
	
	private int cctvFileNum;
	private Date cctvFileDate;
	private String cctvFileName;
	private String cctvFilePath;
	private String cctvNum;
	
	private List<CCTVAttachVO> cctvattachList;
	
	public List<CCTVAttachVO> getAttachList(){
		return cctvattachList;
	}
	public void setCCTVAttachList(List<CCTVAttachVO> cctvattachList) {
		this.cctvattachList = cctvattachList;
	}
	
	public int getCctvFileNum() {
		return cctvFileNum;
	}
	public void setCctvFileNum(int cctvFileNum) {
		this.cctvFileNum = cctvFileNum;
	}
	public Date getCctvFileDate() {
		return cctvFileDate;
	}
	public void setCctvFileDate(Date cctvFileDate) {
		this.cctvFileDate = cctvFileDate;
	}
	public String getCctvFileName() {
		return cctvFileName;
	}
	public void setCctvFileName(String cctvFileName) {
		this.cctvFileName = cctvFileName;
	}
	public String getCctvFilePath() {
		return cctvFilePath;
	}
	public void setCctvFilePath(String cctvFilePath) {
		this.cctvFilePath = cctvFilePath;
	}
	public String getCctvNum() {
		return cctvNum;
	}
	public void setCctvNum(String cctvNum) {
		this.cctvNum = cctvNum;
	}
	
	

}
