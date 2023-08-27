package com.spring.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.josephoconnell.html.HTMLInputFilter;
import com.spring.command.SearchListCommand;
import com.spring.dto.ChargeVO;
import com.spring.service.ChargeService;

@Controller
@RequestMapping("/uparkarea")
public class UChargeController {

	@Autowired
	private ChargeService charService;
	
	@GetMapping("/electchar")
	public ModelAndView list(SearchListCommand command, ModelAndView mnv) throws Exception {
		String url = "/charge/first_floor";
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
		
		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMdd");
		String today = now.format(formatter);
		String floor = charge.getCharNum().substring(0, 3);
		int count = charService.getUpdatedReservationCount(now);
		String reservationCount = String.format("%03d", count);
		
		charge.setCharRecordNum(today + floor + reservationCount);
		charge.setCarNum(HTMLInputFilter.htmlSpecialChars(charge.getCarNum()));
		charge.setCharNum(charge.getCharNum());
		charge.setCharTime(charge.getCharTime());
		
		charService.reserve(charge);
		
		return url;
	}
	
}
