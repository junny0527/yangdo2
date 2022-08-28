package com.javaex.service;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.SaleDao;
import com.javaex.vo.ReservationVo;

@Service
public class SaleService {

	@Autowired
	private SaleDao saleDao;

	public Map<String, Object> getReservation(int no) {
		System.out.println("SaleService > getReservation()");

		// 맵 꺼내기
		Map<String, Object> sMap = saleDao.getReservation(no);
		// 오늘 날짜 구하기
		Date today = new Date();
		// 맵에서 꺼내기
		String checkIn = (String) sMap.get("CHECKIN");
		String checkOut = (String) sMap.get("CHECKOUT");
		String checkInDay = (String) sMap.get("CHECKINDAY");
		String checkOutDay = (String) sMap.get("CHECKOUTDAY");
		String checkInTime = (String) sMap.get("CHECKINTIME");
		String checkOutTime = (String) sMap.get("CHECKOUTTIME");

		String CheckIn = checkIn + " " + checkInDay + " " + checkInTime;
		String CheckOut = checkOut + " " + checkOutDay + " " + checkOutTime;

		Date dt1 = null;
		// 데이트형으로 바꿔주기
		try {
			dt1 = new SimpleDateFormat("yyyy-MM-dd").parse(checkIn);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		sMap.put("CHECK_IN", CheckIn);
		sMap.put("CHECK_OUT", CheckOut);
		// 일수계산
		long diffSec = (dt1.getTime() - today.getTime()) / 1000; // 초 차이

		long dDay = diffSec / (24 * 60 * 60); // 일자수 차이
		System.out.println(dDay);
		// if로 refundNo 10 --> 10일기준 7 --> 7일 기준 6--> 6일기준으로 수수료계산
		// 결제값 꺼내주기
		String dotTotalPrice = String.valueOf(sMap.get("TOTAL_PRICE"));
		// 나눠서 붙여서 170000만들기
		String[] price = dotTotalPrice.split(",");
		String StotalPrice = "";
		for (int i = 0; i < price.length; i++) {
			StotalPrice += price[i];
		}
		int totalPrice = Integer.parseInt(StotalPrice);
		// refundNo 꺼내주기
		int refundNo = Integer.parseInt(String.valueOf(sMap.get("REFUND_NO")));
		System.out.println(refundNo);
		// refundNo = 10
		double refundPrice = 0;
		if (refundNo == 10) {
			if (dDay >= 10) {
				refundPrice = totalPrice * 1;
			} else if (dDay == 9) {
				refundPrice = totalPrice * 0.9;
			} else if (dDay == 8) {
				refundPrice = totalPrice * 0.8;
			} else if (dDay == 7) {
				refundPrice = totalPrice * 0.7;
			} else if (dDay == 6) {
				refundPrice = totalPrice * 0.6;
			} else if (dDay == 5) {
				refundPrice = totalPrice * 0.5;
			} else if (dDay == 4) {
				refundPrice = totalPrice * 0.4;
			} else if (dDay == 3) {
				refundPrice = totalPrice * 0.3;
			} else if (dDay == 2) {
				refundPrice = totalPrice * 0.2;
			} else if (dDay == 1) {
				refundPrice = totalPrice * 0.1;
			} else {
				refundPrice = totalPrice * 0;
			}
		} else if (refundNo == 7) {
			if (dDay >= 7) {
				refundPrice = totalPrice * 1;
			} else if (dDay == 6) {
				refundPrice = totalPrice * 0.9;
			} else if (dDay == 5) {
				refundPrice = totalPrice * 0.85;
			} else if (dDay == 4) {
				refundPrice = totalPrice * 0.8;
			} else if (dDay == 3) {
				refundPrice = totalPrice * 0.7;
			} else if (dDay == 2) {
				refundPrice = totalPrice * 0.5;
			} else if (dDay == 1) {
				refundPrice = totalPrice * 0.3;
			} else {
				refundPrice = totalPrice * 0;
			}
		} else if (refundNo == 6) {
			if (dDay >= 6) {
				refundPrice = totalPrice * 1;
			} else if (dDay == 5) {
				refundPrice = totalPrice * 0.9;
			} else if (dDay == 4) {
				refundPrice = totalPrice * 0.8;
			} else if (dDay == 3) {
				refundPrice = totalPrice * 0.7;
			} else if (dDay == 2) {
				refundPrice = totalPrice * 0.5;
			} else if (dDay == 1) {
				refundPrice = totalPrice * 0.3;
			} else {
				refundPrice = totalPrice * 0;
			}
		} else {

		}
		// 인트로 바꾸기
		int IRefundPrice = (int) refundPrice;
		//
		// 숫자에 , 넣어주기
		String RefundPrice = new DecimalFormat("#,###").format(IRefundPrice);
		int total_Price = Integer.parseInt(dotTotalPrice);
		String total_price = new DecimalFormat("#,###").format(total_Price);
		System.out.println(RefundPrice);
		// 최종금액 추가하기
		String cancelPrice = new DecimalFormat("#,###").format(total_Price - IRefundPrice);
		
		// 맵에 넣기
		sMap.put("REFUND_PRICE", RefundPrice);
		sMap.put("totalPRICE", total_price);
		sMap.put("cancelPRICE", cancelPrice);

		System.out.println(sMap);

		return sMap;
	}

	public int yangdoUpdate(ReservationVo reservationVo) {
		System.out.println("SaleService > yangdoUpdate()");

		String transp = reservationVo.getTransPrice();
		String[] transprice = transp.split(",");
		String transPrice = "";

		for (int i = 0; i < transprice.length; i++) {
			transPrice += transprice[i];
		}
		System.out.println(transPrice);
		int trans_Price = Integer.parseInt(transPrice);

		reservationVo.setTrans_Price(trans_Price);

		int count = saleDao.yangdoUpdate(reservationVo);

		return count;
	}
}
