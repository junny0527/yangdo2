package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyReservationDao {

	@Autowired
	SqlSession sqlSession;

	// 예약완료 내역 출력
	public List<Map<String, Object>> reservedList(int no) {
		System.out.println("MyReservationDao>ReservedList()");

		List<Map<String, Object>> reservedList = sqlSession.selectList("my.getReservedList", no);

		return reservedList;
	}

	// 이용완료 내역 출력
	public List<Map<String, Object>> usedList(int no) {
		System.out.println("MyReservationDao>usedList()");

		List<Map<String, Object>> usedList = sqlSession.selectList("my.getUsedList", no);

		return usedList;
	}

	// 예약취소 내역 출력
	public List<Map<String, Object>> canceledList(int no) {
		System.out.println("MyReservationDao>canceledList()");

		List<Map<String, Object>> canceledList = sqlSession.selectList("my.getcanceledList", no);

		return canceledList;
	}

	// 양도대기 내역 출력
	public List<Map<String, Object>> relistedList(int no) {
		System.out.println("MyReservationDao>relistedList()");

		List<Map<String, Object>> relistedList = sqlSession.selectList("my.getRelistedList", no);

		return relistedList;
	}

	// 양도완료 내역 출력
	public List<Map<String, Object>> transferredList(int no) {
		System.out.println("MyReservationDao>transferredList()");

		List<Map<String, Object>> transferredList = sqlSession.selectList("my.getTransferredList", no);

		return transferredList;
	}
}
