package com.javaex.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.RePayDao;

@Service
public class RePayService {
	@Autowired
	private RePayDao rePayDao;

	// 예약+양도예약 정보 가져오기
	public Map<String, Object> getRePay(int no) {
		System.out.println("RePayService > getRePay()");

		Map<String, Object> rpMap = rePayDao.getRePay(no);
		// 체크인 날짜 구하기
		// 맵에서 꺼내기
		String checkIn = (String) rpMap.get("CHECK_IN");
		
		String checkOut = (String) rpMap.get("CHECK_OUT");
		// 스플릿으로 짤라주기
		String[] checkInList = checkIn.split(" ");
		
		String[] checkOutList = checkOut.split(" ");
		// 날짜만 가져옴
		String CheckInDate = checkInList[0];
		System.out.println(CheckInDate);
		String CheckOutDate = checkOutList[0];
		System.out.println(CheckOutDate);
		Date dt1 = null;
		// 데이트형으로 바꿔주기
		try {
			dt1 = new SimpleDateFormat("yyyy-MM-dd").parse(CheckInDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Date dt2 = null;
		// 데이트형으로 바꿔주기
		try {
			dt2 = new SimpleDateFormat("yyyy-MM-dd").parse(CheckOutDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		// 일수계산
		long diffSec = (dt2.getTime() - dt1.getTime()) / 1000; // 초 차이

		long dDay = diffSec / (24 * 60 * 60); // 일자수 차이
		System.out.println(dDay);
		
		rpMap.put("DDay", dDay);
		
		return rpMap;
	}

	/*
	 * // 예약 인서트 public int reInsert(RePayVo rePayVo) {
	 * 
	 * System.out.println("RePayService > reInsert"); return
	 * rePayDao.reInsert(rePayVo); }
	 * 
	 * //양도 예약 업데이트 + 인서트 (순서: 업데이트 후 인서트) public int yangdoUpIn(RePayVo rePayVo) {
	 * //업데이트 System.out.println("RePayService > yangdoUpIn");
	 * rePayDao.yangdoUpdate(rePayVo);
	 * 
	 * // -------------
	 * 
	 * //인서트 return rePayDao.yangdoInsert(rePayVo) ; }
	 */
}
