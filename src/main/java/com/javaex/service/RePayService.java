package com.javaex.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.dao.PointsDao;
import com.javaex.dao.RePayDao;
import com.javaex.vo.RePayVo;

@Service
public class RePayService {
	@Autowired
	private RePayDao rePayDao;
	@Autowired
	private PointsDao pointsDao;
//===========================================================================================================
	
	// 예약 정보 가져오기
	public Map<String, Object> getRePay(@RequestParam Map<String, Object> params) {
		System.out.println("\t\t RePayService::getRePay() invoked...");

		// 맵에서 꺼내기
		String checkIn = (String) params.get("datepicker");
		String checkOut = (String) params.get("datepicker2");
		String checkInhr = (String) params.get("check_in");
		String checkOuthr = (String) params.get("check_out");

		// 스플릿으로 짤라주기
		String CheckIn = checkIn + " " + checkInhr;
		String CheckOut = checkOut + " " + checkOuthr;
		Date dt1 = null;
		// 데이트형으로 바꿔주기
		try {
			dt1 = new SimpleDateFormat("yyyy-MM-dd").parse(checkIn);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Date dt2 = null;
		// 데이트형으로 바꿔주기
		try {
			dt2 = new SimpleDateFormat("yyyy-MM-dd").parse(CheckOut);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		params.put("CHECK_IN", CheckIn);
		params.put("CHECK_OUT", CheckOut);
		// 일수계산
		long diffSec = (dt2.getTime() - dt1.getTime()) / 1000; // 초 차이

		long dDay = diffSec / (24 * 60 * 60); // 일자수 차이
		System.out.println(dDay);

		params.put("DDay", dDay);
		return params;
	}
//===========================================================================================================

	// 양도예약 정보 가져오기
	public Map<String, Object> getyangdoRePay(int no) {
		System.out.println("\t\t RePayService::getRePay() invoked...");

		Map<String, Object> rpMap = rePayDao.getyangdoRePay(no);

		// 맵에서 꺼내기
		String checkIn = (String) rpMap.get("CHECKIN");
		String checkOut = (String) rpMap.get("CHECKOUT");
		String checkInTime = (String) rpMap.get("CHECKINTIME");
		String checkOutTime = (String) rpMap.get("CHECKOUTTIME");
		// 스플릿으로 짤라주기
		String CheckIn = checkIn + " " + checkInTime;
		String CheckOut = checkOut + " " + checkOutTime;
		Date dt1 = null;
		// 데이트형으로 바꿔주기
		try {
			dt1 = new SimpleDateFormat("yyyy-MM-dd").parse(checkIn);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Date dt2 = null;
		// 데이트형으로 바꿔주기
		try {
			dt2 = new SimpleDateFormat("yyyy-MM-dd").parse(CheckOut);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		rpMap.put("CHECK_IN", CheckIn);
		rpMap.put("CHECK_OUT", CheckOut);
		// 일수계산
		long diffSec = (dt2.getTime() - dt1.getTime()) / 1000; // 초 차이

		long dDay = diffSec / (24 * 60 * 60); // 일자수 차이
		System.out.println(dDay);

		rpMap.put("DDay", dDay);

		return rpMap;
	}
//===========================================================================================================
	
	// 일반 결제 포인트
	public Map<String, Object> PayInsert(RePayVo bean) {
		System.out.println("\t\t RePayService::PayInsert() invoked...");
		System.out.println("Service Bean :: " + bean);

		Map<String, Object> result = new HashMap<>();

		// 1. 예약 테이블 인서트
		int payInsertCnt = rePayDao.PayInsert(bean);
		// 2. 포인트 인서트
		pointsDao.pointsInsert(bean);

		result.put("count", payInsertCnt);
		result.put("no", bean.getNo());// 예약번호
		return result; // map key 2개 count, no

	}
//===========================================================================================================

	// 양도 결제 포인트
	public Map<String, Object> yangdoUpdateInsert(RePayVo bean) {
		System.out.println("\t\t RePayService::yangdoUpdateInsert() invoked...");
		
		Map<String, Object> result = new HashMap<>();

		System.out.println("양도 업데이트 >>>> " + bean.toString());
		
		int no = bean.getNo();
		
		int yangdoUpdateCnt = rePayDao.yangdoUpdate(no);
		// 1.부모 번호에 넣어주기
		bean.setPrNo(bean.getNo());
		// 양도 새롭게 insert
		rePayDao.yangdoInsert(bean);
		// 포인트 내역 insert
		pointsDao.pointsInsert(bean);

		System.out.println("양도 완료 후 >> " + bean.toString());

		result.put("count", yangdoUpdateCnt);// 업데이트 시켜줌
		result.put("no", bean.getNo()); // 일반예약번호를

		return result;
	}

}
