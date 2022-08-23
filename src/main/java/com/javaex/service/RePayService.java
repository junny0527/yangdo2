package com.javaex.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.PointsDao;
import com.javaex.dao.RePayDao;
import com.javaex.vo.RePayVo;

@Service
public class RePayService  {
	@Autowired
	private RePayDao rePayDao;
	@Autowired
	private PointsDao pointsDao;

	/*
	 * // 예약 정보 가져오기 public Map<String, Object> getRePay(int no) {
	 * System.out.println("\t\t RePayService::getRePay() invoked...");
	 * 
	 * Map<String, Object> rpMap = rePayDao.getRePay(no);
	 * 
	 * //맵에서 꺼내기 String checkIn = (String)rpMap.get("CHECKIN"); String checkOut =
	 * (String)rpMap.get("CHECKOUT"); String checkInDay =
	 * (String)rpMap.get("CHECKINDAY"); String checkOutDay =
	 * (String)rpMap.get("CHECKOUTDAY"); String checkInTime =
	 * (String)rpMap.get("CHECKINTIME"); String checkOutTime =
	 * (String)rpMap.get("CHECKOUTTIME"); // 스플릿으로 짤라주기 String CheckIn = checkIn
	 * +" "+checkInDay+" "+checkInTime ; String CheckOut = checkOut
	 * +" "+checkOutDay+" "+checkOutTime; Date dt1 = null; //데이트형으로 바꿔주기 try { dt1 =
	 * new SimpleDateFormat("yyyy-MM-dd").parse(checkIn); } catch (ParseException e)
	 * { e.printStackTrace(); } Date dt2 = null; //데이트형으로 바꿔주기 try { dt2 = new
	 * SimpleDateFormat("yyyy-MM-dd").parse(CheckOut); } catch (ParseException e) {
	 * e.printStackTrace(); } rpMap.put("CHECK_IN", CheckIn); rpMap.put("CHECK_OUT",
	 * CheckOut); //일수계산 long diffSec = (dt2.getTime() - dt1.getTime()) / 1000; //초
	 * 차이
	 * 
	 * long dDay = diffSec / (24*60*60); //일자수 차이 System.out.println(dDay);
	 * 
	 * rpMap.put("DDay", dDay);
	 * 
	 * return rpMap; }
	 */
	//양도예약 정보 가져오기
	public Map<String, Object> getyangdoRePay(int no) {
		System.out.println("\t\t RePayService::getRePay() invoked...");

		Map<String, Object> rpMap = rePayDao.getyangdoRePay(no);
		
				//맵에서 꺼내기
				String checkIn = (String)rpMap.get("CHECKIN");
				String checkOut = (String)rpMap.get("CHECKOUT");
				String checkInDay = (String)rpMap.get("CHECKINDAY");
				String checkOutDay = (String)rpMap.get("CHECKOUTDAY");
				String checkInTime = (String)rpMap.get("CHECKINTIME");
				String checkOutTime = (String)rpMap.get("CHECKOUTTIME");
		// 스플릿으로 짤라주기
				String CheckIn = checkIn +" "+checkInDay+" "+checkInTime ;
				String CheckOut = checkOut +" "+checkOutDay+" "+checkOutTime;
				Date dt1 = null;
				//데이트형으로 바꿔주기
				try {
					dt1 = new SimpleDateFormat("yyyy-MM-dd").parse(checkIn);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				Date dt2 = null;
				//데이트형으로 바꿔주기
				try {
					dt2 = new SimpleDateFormat("yyyy-MM-dd").parse(CheckOut);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				rpMap.put("CHECK_IN", CheckIn);
				rpMap.put("CHECK_OUT", CheckOut);
				//일수계산
				long diffSec = (dt2.getTime() - dt1.getTime()) / 1000; //초 차이
				
		        long dDay = diffSec / (24*60*60); //일자수 차이
		        System.out.println(dDay);
		
		rpMap.put("DDay", dDay);
		
		return rpMap;
	}
	
	//일반 결제 포인트 
	
	public Map<String, Object> PayInsert(RePayVo bean) {
		System.out.println("\t\t RePayService::PayInsert() invoked...");
		System.out.println("Service Bean :: " + bean);
//		
		// PointsVo pointsVo => 포인트 정보
		// 여기서 int points -로 바꿔 다시 set해
		Map<String, Object> result = new HashMap<>();
		pointsDao.pointsInsert(bean);
		result.put("count", rePayDao.PayInsert(bean));
		result.put("no", bean.getNo());
		return result; // map key 2개 count, no 
		
	 
	}
	
	//양도 결제 포인트 
	
	public Map<String, Object> yangdoUpdateInsert(RePayVo bean) {
		System.out.println("\t\t RePayService::yangdoUpdateInsert() invoked...");
		Map<String, Object> result = new HashMap<>();
		pointsDao.pointsInsert(bean);
		rePayDao.yangdoInsert(bean);
		result.put("no", bean.getNo());
		bean.setNo(bean.getPrNo());
		bean.setStatus("5");
		result.put("count", rePayDao.yangdoUpdate(bean));
		return result;
		
	}
	
}
