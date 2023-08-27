package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.command.SearchListCommand;
import com.spring.service.CarService;
import com.spring.service.UserService;

@Controller
@RequestMapping("/muserinfo")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/list")
	public void main() {}
	
	@GetMapping("/userlist")
	public ModelAndView list(SearchListCommand command, ModelAndView mnv) throws Exception {
		String url = "/userinfo/list";
		Map<String,Object> dataMap = userService.getUserListByCar(command);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
}
