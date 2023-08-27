package com.spring.controller;

import java.sql.SQLException;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.command.SearchListCommand;
import com.spring.dto.NoticeVO;
import com.spring.service.NoticeService;

@Controller
@RequestMapping("/unotice")

public class UnoticeController {

	@Resource(name="noticeService")
	private NoticeService service;
	
	@GetMapping("/main")
	public void main(){}
	
	@GetMapping("/list")
	public void list(SearchListCommand command, Model model) throws SQLException{

		Map<String,Object> dataMap = service.getNoticeList(command);
		
		model.addAllAttributes(dataMap);
		
	}
	
	@RequestMapping("/detail")
	public String detail(int notiNum,
			@RequestParam(defaultValue = "")String from,
			Model model )throws SQLException{
		String url="/unotice/detail";
		
		NoticeVO notice =null;
		if(from.equals("list")) {
			notice=service.read(notiNum);
			url="redirect:/unotice/detail.do?notiNum="+notiNum;
		}else {
			notice=service.getNotice(notiNum);
		}
		
		model.addAttribute("notice",notice);
		
		return url;
	}
	

	

	

	

}









