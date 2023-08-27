package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.command.SearchListCommand;
import com.spring.service.AbanService;

@Controller
@RequestMapping("/muserinfo")
public class AbanController {
	
	@Autowired
	private AbanService abanService;
	
	@GetMapping("/abandon")
	public ModelAndView list(SearchListCommand command, ModelAndView mnv) throws Exception {
		String url = "/abandon/list";
		Map<String,Object> dataMap = abanService.getAbanList(command);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
}
