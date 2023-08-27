
  package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.dto.UserInfoVO;
import com.spring.service.UserInfoService;

@Controller 
  @RequestMapping("/login")
  public class UserInfoController {
  
 // @Resource(name = "userInfoService")
  private UserInfoService userinfoService;
  
  
  @GetMapping("/main")
  public void main() {
  }
  

  @GetMapping("/joinForm")
  public String joinForm() {
     String url = "/user/joinForm";
     return url;
  }
  

  
  @GetMapping(value ="/remove")
  public String remove(String id)throws Exception{
	   String url="/user/remove_success";
	   
	   UserInfoVO user = userinfoService.getUser(id);
	   //db삭제
	   userinfoService.remove(id);
	   
	   return url;
  }
  

  
  
  
  
  
  }