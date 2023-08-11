package com.spring.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.josephoconnell.html.HTMLInputFilter;
import com.spring.command.SearchListCommand;
import com.spring.dto.CarVO;
import com.spring.service.CarService;

@Controller
@RequestMapping("/umypage")
public class CarController {
	
	@Autowired
	private CarService carService;
	
	@GetMapping("/mypage")
	public void main() {}
	
	@GetMapping("/mycarinfo")
	public String list(SearchListCommand command, HttpServletRequest request) throws Exception {
		String url = "/carinfo/list";
		Map<String,Object> dataMap = carService.getCarList(command);
		request.setAttribute("dataMap", dataMap);
		return url;
	}
	
	@GetMapping("/registForm")
	public String registForm() {
		String url = "/carinfo/regist";
		return url;
	}
	
	@PostMapping("/regist")
	public String regist(CarVO car, @RequestParam("4")int treatinfo2, @RequestParam("4")int treatinfo3) throws Exception {
		String url = "/carinfo/regist_success";
		
		car.setCarNum(car.getCarNum());
		car.setcTypeNum(car.getcTypeNum());
		car.setTreatInfo1(car.getTreatInfo1());
		car.setLotColor(car.getLotColor());
		car.setPreSeat(car.getPreSeat());
		car.setTreatInfo2(car.getTreatInfo2());
		car.setTreatInfo3(car.getTreatInfo3());
		car.setUserId(car.getUserId());
		
		carService.regist(car);
		
		return url;
	}
	
	@GetMapping("/modifyForm")
	public String modifyForm(String carNum, Model model) throws Exception {
		String url = "/carinfo/modify";
		
		CarVO car = carService.getCar(carNum);
		model.addAttribute("car", car);
		
		return url;
	}
	
	@PostMapping(value = "/modify", produces = "text/plain;charset=utf-8")
	public ModelAndView modify(CarVO car, ModelAndView mnv) throws Exception {
		String url = "redirect:/carinfo/list.do?userid=" + car.getUserId();
		car.setCarNum(HTMLInputFilter.htmlSpecialChars(car.getCarNum()));
		carService.modify(car);
		mnv.setViewName(url);
		return mnv;
	}
	
	@GetMapping("/remove")
	public String remove(String carNum) throws Exception {
		String url = "/carinfo/remove";
		carService.remove(carNum);
		return url;
	}
}
