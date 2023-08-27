package com.spring.command;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.spring.dto.CCTVVO;

public class CCTVRegistCommand {
	private String cctvFileName;
	private List<MultipartFile> UploadFile;
	
	public String getCctvFileName() {
		return cctvFileName;
	}
	public void setCctvFileName(String cCTVFileName) {
		cctvFileName = cCTVFileName;
	}
	public List<MultipartFile> getUploadFile() {
		return UploadFile;
	}
	public void setUploadFile(List<MultipartFile> uploadFile) {
		UploadFile = uploadFile;
	}
	
	public CCTVVO toCCTVVO() {
		CCTVVO cctv = new CCTVVO();
		cctv.setCctvFileName(this.cctvFileName);
		
		return cctv;
	}
}
