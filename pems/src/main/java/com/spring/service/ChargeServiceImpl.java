package com.spring.service;

import java.sql.SQLException;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.command.PageMaker;
import com.spring.command.SearchListCommand;
import com.spring.dao.ChargeDAO;
import com.spring.dto.ChargeVO;

public class ChargeServiceImpl implements ChargeService {
	
	private ChargeDAO chargeDAO;
	public void setChargeDAO(ChargeDAO chargeDAO) {
		this.chargeDAO = chargeDAO;
	}

	@Override
	public Map<String, Object> getCharRecordList(SearchListCommand command) throws SQLException {
		List<ChargeVO> chargeList = chargeDAO.selectSearchCharRecordList(command);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCommand(command);
		pageMaker.setTotalCount(chargeDAO.selectSearchCharRecordListCount(command));
				
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("chargeList", chargeList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public Map<String, Object> getUsingCharList(SearchListCommand command) throws SQLException {
		List<ChargeVO> chargeList = chargeDAO.selectUsingChar(command);
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("chargeList", chargeList);
		return dataMap;
	}

	@Override
	public Map<String, Object> getNowCharList(SearchListCommand command) throws SQLException {
		List<ChargeVO> usingList = chargeDAO.selectUsingChar(command);
		
		List<String> emptyList = new ArrayList<>();
		emptyList.add("F01A001");
		emptyList.add("F01A002");
		emptyList.add("F01A003");
		emptyList.add("F01B001");
		emptyList.add("F01B002");
		emptyList.add("F01B003");
		emptyList.add("F01E001");
		emptyList.add("F01E002");
		emptyList.add("F01F001");
		emptyList.add("F01F002");
		emptyList.add("F02A001");
		emptyList.add("F02A002");
		emptyList.add("F02A003");
		emptyList.add("F02B001");
		emptyList.add("F02B002");
		emptyList.add("F02B003");
		emptyList.add("F02E001");
		emptyList.add("F02E002");
		emptyList.add("F02F001");
		emptyList.add("F02F002");
		
		if (usingList != null) {
			for (ChargeVO charger : usingList) {
				String usingNum = charger.getCharNum();
				emptyList.remove(usingNum);
			}
		}
		
		if (usingList != null) {
			for (ChargeVO charger : usingList) {
				LocalDateTime nowTime = LocalDateTime.now();
				LocalDateTime charTime  = charger.getCharTime().toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();
				
				if (nowTime.isAfter(charTime)) {
					charger.setCharFin(0);
					emptyList.add(charger.getCharNum());
					usingList.remove(charger);
					chargeDAO.updateCharger(charger);
				}
				else {
					Duration duration = Duration.between(nowTime, charTime);
					
					long total = duration.toMillis();
					long hour = total / (1000 * 60 *60 ) % 24;
					long minute = total / (60 * 1000) % 60 ;
					if (hour < 0) hour = 0;
					if (minute < 0) minute = 0;
					charger.setLeftHour(hour);
					charger.setLeftMinute(minute);
				}
			}
		}
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("usingList", usingList);
		dataMap.put("emptyList", emptyList);
		
		return dataMap;
	}

	private LocalDate lastReservationDate = null;
    private int reservationCount = 0;
    
    @Override
    public int getUpdatedReservationCount(LocalDate reservationDate) throws Exception{
        if (lastReservationDate == null || reservationDate.isAfter(lastReservationDate)) {
            lastReservationDate = reservationDate;
            reservationCount = 1;
        } else {
            reservationCount++;
        }
        return reservationCount;
    }
	
	@Override
	public void reserve(ChargeVO charge) throws SQLException {
		chargeDAO.reserveCharger(charge);
	}

	@Override
	public ChargeVO getCharger(String charNum) throws SQLException {
		ChargeVO charge = chargeDAO.selectChargerByCharNum(charNum);
		return charge;
	}

}
