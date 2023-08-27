package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mparkmanage")
public class EnvironmentController {
	@GetMapping("/environment")
	public String environment() throws Exception{
		String url="/mparkmanage/condition";
		
		return url;
	}
}
