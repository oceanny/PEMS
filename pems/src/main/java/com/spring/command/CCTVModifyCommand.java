package com.spring.command;

import com.spring.dto.CCTVVO;

public class CCTVModifyCommand extends CCTVRegistCommand {

	private int cctvFileNum;
	private int[] deleteFile;
	
	public int getCctvFileNum() {
		return cctvFileNum;
	}
	public void setCctvFileNum(int cctvFileNum) {
		this.cctvFileNum = cctvFileNum;
	}
	public int[] getDeleteFile() {
		return deleteFile;
	}
	public void setDeleteFile(int[] deleteFile) {
		this.deleteFile = deleteFile;
	}
	
	@Override
	public CCTVVO toCCTVVO() {
		CCTVVO cctv = super.toCCTVVO();
		cctv.setCctvFileNum(cctvFileNum);
		
		return cctv;
	}
}
