package com.javaex.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MyReservationDao;

@Service
public class MyReservationService {

	@Autowired
	private MyReservationDao mrDao;

	// 예약완료 내역
	public List<Map<String, Object>> reservedList(int no) {
		System.out.println("MyReservationService>reservedList()");

		return mrDao.reservedList(no);
	}

	// 이용완료 내역 출력
	public List<Map<String, Object>> usedList(int no) {
		System.out.println("MyReservationService>usedList()");

		return mrDao.usedList(no);
	}

	// 예약취소 내역 출력
	public List<Map<String, Object>> canceledList(int no) {
		System.out.println("MyReservationService>canceledList()");

		return mrDao.canceledList(no);
	}

	// 양도대기 내역 출력
	public List<Map<String, Object>> relistedList(int no) {
		System.out.println("MyReservationService>relistedList()");

		return mrDao.relistedList(no);
	}

	// 양도완료 내역 출력
	public List<Map<String, Object>> transferredList(int no) {
		System.out.println("MyReservationService>transferredList()");

		return mrDao.canceledList(no);
	}
}
