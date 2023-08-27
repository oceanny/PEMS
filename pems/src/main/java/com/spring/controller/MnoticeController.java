package com.spring.controller;

import java.sql.SQLException;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.josephoconnell.html.HTMLInputFilter;
import com.spring.command.SearchListCommand;
import com.spring.dto.NoticeVO;
import com.spring.service.NoticeService;

@Controller
@RequestMapping("/mnotice")

public class MnoticeController {

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
		String url="/mnotice/detail";
		
		NoticeVO notice =null;
		if(from.equals("list")) {
			notice=service.read(notiNum);
			url="redirect:/mnotice/detail.do?notiNum="+notiNum;
		}else {
			notice=service.getNotice(notiNum);
		}
					
		model.addAttribute("notice",notice);
		
		return url;
	}
	
	@GetMapping("/registForm")
	public String registForm() throws Exception{
		String url="mnotice/regist";		
		return url;
	}
	
	@PostMapping("/regist")
	public String regist(NoticeVO notice)throws Exception{
		String url="/mnotice/regist_success";	
		
		notice.setNotiTitle(HTMLInputFilter.htmlSpecialChars(notice.getNotiTitle()));
		service.regist(notice);
		
		return url;
	}

	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(int notiNum,ModelAndView mnv)throws SQLException{
		String url="/mnotice/modify";
		
		NoticeVO notice = service.getNotice(notiNum);
		
		mnv.addObject("notice",notice);		
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping(value="/modify",method=RequestMethod.POST)
	public String modifyPost(NoticeVO notice,Model model) throws Exception{
		String url = "redirect:/mnotice/detail.do?notiNum="+notice.getNotiNum();
		
		notice.setNotiTitle(HTMLInputFilter.htmlSpecialChars(notice.getNotiTitle()));
		service.modify(notice);
		
		model.addAttribute("notice",notice); 
		return url;
	}
	
	@GetMapping(value="/remove")
	public String remove(int notiNum) throws Exception{
		String url = "/notice/remove_success";
		service.remove(notiNum);		
	
		return url;		
	}
	
}









