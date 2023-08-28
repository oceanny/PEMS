package com.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.josephoconnell.html.HTMLInputFilter;
import com.spring.command.SearchListCommand;
import com.spring.dto.CarVO;
import com.spring.dto.ChargeVO;
import com.spring.service.CarService;
import com.spring.service.ChargeService;

@Controller
@RequestMapping("/uparkarea")
public class UChargeController {

	@Autowired
	private ChargeService charService;
	
	@Autowired
	private CarService carService;
	
	@GetMapping("/electchar1")
	public ModelAndView list1(SearchListCommand command, ModelAndView mnv) throws Exception {
		String url = "/charge/first_floor";
		Map<String,Object> dataMap = charService.getNowCharList(command);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/electchar2")
	public ModelAndView list2(SearchListCommand command, ModelAndView mnv) throws Exception {
		String url = "/charge/second_floor";
		Map<String,Object> dataMap = charService.getNowCharList(command);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/reserveForm")
	public ModelAndView registForm(String charNum, ModelAndView mnv) throws Exception{
		String url="/charge/reserve";
		
		ChargeVO charge = charService.getCharger(charNum);
		mnv.addObject("charge", charge);
		mnv.setViewName(url);
		return mnv;
	}
	
	@PostMapping("/reserve")
	public String regist(ChargeVO charge)throws Exception{
		String url="/charge/reserve_success";
		
		String recordNum = charService.getRecentRecordNum();
		
		String floor = charge.getCharNum().substring(0, 3);
		
		charge.setCharRecordNum(recordNum.substring(0, 6) + floor + recordNum.substring(6));
		charge.setCarNum(HTMLInputFilter.htmlSpecialChars(charge.getCarNum()));
		charge.setCharNum(charge.getCharNum());
		charge.setCharTime(charge.getCharTime());
		
		charService.reserve(charge);
		
		return url;
	}
	
	@GetMapping("/usingCheck")
	@ResponseBody
	public ResponseEntity<String> usingCheck(String carNum) throws Exception {
		ResponseEntity<String> entity = null;

		ChargeVO charge = charService.getUsingCar(carNum);

		if (charge != null) {
			entity = new ResponseEntity<String>("using", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>("", HttpStatus.OK);
		}

		return entity;
	}
	
	@GetMapping("/carCheck")
	@ResponseBody
	public ResponseEntity<String> carCheck(String carNum) throws Exception {
		ResponseEntity<String> entity = null;
		
		CarVO regCar = carService.getCar(carNum);
		CarVO electCar = carService.getElectCar(carNum);
		
		if (regCar == null) {
			entity = new ResponseEntity<String>("none", HttpStatus.OK);
		}
		else if (electCar == null) {
			entity = new ResponseEntity<String>("noelect", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>("", HttpStatus.OK);
		}
		
		return entity;
	}
	
}
