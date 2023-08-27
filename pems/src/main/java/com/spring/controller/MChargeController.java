package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.command.SearchListCommand;
import com.spring.service.ChargeService;

@Controller
@RequestMapping("/mparkarea")
public class MChargeController {
	
	@Autowired
	private ChargeService charService;
	
	@GetMapping("/electchar")
	public ModelAndView list(SearchListCommand command, ModelAndView mnv) throws Exception {
		String url = "/charge/mlist";
		Map<String,Object> dataMap = charService.getNowCharList(command);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
}
