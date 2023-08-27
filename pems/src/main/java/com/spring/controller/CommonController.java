package com.spring.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.josephoconnell.html.HTMLInputFilter;
import com.spring.dto.MenuVO;
import com.spring.dto.UserInfoVO;
import com.spring.exception.InvalidPasswordException;
import com.spring.exception.NotFoundIdException;
import com.spring.service.AdminService;
import com.spring.service.MenuService;
import com.spring.service.UserInfoService;

@Controller
public class CommonController {
   
   @Autowired
   private MenuService menuService;
   
   @Autowired
	private UserInfoService userinfoService;
  
  @Autowired
  private AdminService adminService;
   
   @GetMapping("/common/umain")
   public String umain()throws Exception {
	   String url="/common/userDashboard";
	   
	   return url;
   }
   
   @GetMapping("/common/mmain")
   public String mmain() throws Exception {
	   String url="/common/managerDashboard";
	   
	   return url;
   }
   
   @GetMapping("/userHome")
   public String UserHome(@RequestParam(defaultValue = "UM000000") String menuCode, HttpSession session, Model model) throws Exception{
      String url="/common/indexPage";
      
      List<MenuVO> menuList = menuService.getUserMainMenuList();
      MenuVO menu = menuService.getMenuByMenuCode(menuCode);
      
      
      model.addAttribute("menuList", menuList);
      model.addAttribute("menu", menu);
      
      return url;
   }
   
   @GetMapping("/managerHome")
   public String ManagerHome(@RequestParam(defaultValue = "MM000000") String menuCode, HttpSession session, Model model) throws Exception{
      String url="/common/indexPage";
      
      List<MenuVO> menuList = menuService.getManagerMainMenuList();
      MenuVO menu = menuService.getMenuByMenuCode(menuCode);
      
      
      model.addAttribute("menuList", menuList);
      model.addAttribute("menu", menu);
      
      return url;
   }
   
   @GetMapping("/subMenu")
   @ResponseBody
   public List<MenuVO> subMenuToJSON(String menuCode) throws Exception {
      List<MenuVO> menuList = menuService.getSubMenuList(menuCode);
      return menuList;
   }
   
   @GetMapping("/common/loginForm")
 	public String loginForm(@ModelAttribute("retUrl") String retUrl, String error, HttpServletResponse response,
 			Model model) {
 		String url = "/common/loginForm";

 		if (error != null && error.equals("-1")) {
 			response.setStatus(302);
 			model.addAttribute("message", "로그인은 필수입니다.");
 		}

 		return url;
   }
 	
   
   @PostMapping("/common/login")
	public String login(String userId, String userPwd, String retUrl, HttpSession session, Model model) throws Exception {
		String url = "redirect:/userHome.do";
		
		if (retUrl != null && !retUrl.isEmpty())
			url = "redirect:" + retUrl;

		try {
			userinfoService.login(userId, userPwd);
			session.setAttribute("loginUser", userId);
			// session.setMaxInactiveInterval(6*60);
		} catch (NotFoundIdException | InvalidPasswordException  e) {
			url = "/common/login_fail";
			model.addAttribute("retUrl", retUrl);

		} catch (SQLException  e) {
			e.printStackTrace();
			throw e;
		}
		return url;
	}
	@PostMapping("/common/adminLogin")
	public String adminLogin(String adminId, String adminPwd,String retUrl, HttpSession session, Model model) throws Exception {
		String url = "redirect:/managerHome.do";

		if (retUrl != null && !retUrl.isEmpty())
			url = "redirect:" + retUrl;
		try {
			adminService.login(adminId, adminPwd);
			session.setAttribute("loginUser", adminId);
			// session.setMaxInactiveInterval(6*60);
		} catch (NotFoundIdException | InvalidPasswordException  e) {
			url = "/common/login_fail";
			model.addAttribute("retUrl", retUrl);
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		}
		return url;
	}

	@GetMapping("/common/logout")
	public String logout(HttpSession session) {
		String url = "redirect:/";
		session.invalidate();
		return url;
	}
	@GetMapping("/common/certification")
	public void certification() throws Exception{
	}
	@GetMapping("/common/certification2")
	public void certification2() throws Exception{
	}
	
	
	@GetMapping("/common/IdFind")
	public void idFind() throws Exception{
	}

	@GetMapping("/common/join")
	public void join() throws Exception{
	}
	@GetMapping("/common/myInfo")
	public String myInfo() throws Exception{
		String url="/common/myInfo";
		
		return url;
	}
	@GetMapping("/common/changeInfo")
	public String changeInfo() throws Exception{
		String url="/common/changeInfo";
		
		return url;
	}
	@GetMapping("/common/adminLoginForm")
	public String adminLoginForm() throws Exception{
		String url="/common/adminLoginForm";
		
		return url;
	}
	
	@GetMapping("/common/idCheck")
	  @ResponseBody
	  public ResponseEntity<String> idCheck(String userId) throws Exception {
	     ResponseEntity<String> entity = null;

	     UserInfoVO user = userinfoService.getUser(userId);

	     if (user != null) {
	        entity = new ResponseEntity<String>("duplicated", HttpStatus.OK);
	     } else {
	        entity = new ResponseEntity<String>("", HttpStatus.OK);
	     }

	     return entity;
	  }
	  @PostMapping("/common/join")
	  public String regist(UserInfoVO user)throws Exception{
	     String url = "/user/join_success";
	     
	     user.setName(HTMLInputFilter.htmlSpecialChars(user.getName()));
	     
	     userinfoService.regist(user);
	     
	     return url;
	  }
	  @PostMapping("/common/idFind")
	  public String idFind1(String name, String mail,Model model) throws Exception{
		  String url ="/id/idFind_success";
		  
		  
		  UserInfoVO user=userinfoService.idFind(name,mail);
		  
		  String foundedId =user.getUserid();
		
		model.addAttribute("message", name+"님의 아이디는"+foundedId+"입니다 로그인 해주세요.");
	
		 return url;	 
		 
		  }
	  
	  @GetMapping("/common/pwdFind")
	  public String pwdFind() throws Exception{
			String url="/common/pwdFind";
			
			return url;
		}
	  @PostMapping("/common/pwdFind")
	  public String postPwdFind(String userId, Model model) throws Exception{
		  
		  String url;       
		  
		  UserInfoVO user = userinfoService.getUser(userId);
		  
		  
		  if(user!=null) {
			  url = "/common/pwdFind2";
			  return url;
		  }else {
			  url = "/common/pwdFind_fail";
			  
			  return url;
		  }
		  			
		  
	  }
		@GetMapping("/common/pwdFind2")
		@ResponseBody
		public String mailCheck(String email) {
			
			String url = "/common/pwdFind2";
			
			System.out.println("이메일 인증 요청이 들어옴!");
			System.out.println("이메일 인증 이메일 : " + email);
			
			return url;
		}
	 
}

   



