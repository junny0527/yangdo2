package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MyDao;
import com.javaex.vo.MyListVo;

@Service
public class MyService {

	@Autowired
	private MyDao myDao;

	// 유저번호로 예약내역 출력하기
	public Map<String, List<MyListVo>> reservationList(int no) {
		System.out.println("MyService>reservationList()");

		Map<String, List<MyListVo>> myMap = new HashMap<String, List<MyListVo>>();
		myMap.put("rList", myDao.getReserveList(no));
		myMap.put("uList", myDao.getUsedList(no));
		myMap.put("cList", myDao.getCancelList(no));

		return myMap;
	}

	// 유저번호로 양도내역 출력하기
	public Map<String, List<MyListVo>> yangdoList(int no) {
		System.out.println("MyService>yangdoList()");

		Map<String, List<MyListVo>> myMap2 = new HashMap<String, List<MyListVo>>();
		myMap2.put("yList", myDao.getRelistList(no));
		myMap2.put("tList", myDao.getTransferList(no));

		return myMap2;
	}

	// 유저번호로 전체 리스트 불러오기
	public List<MyListVo> getUserList(int no) {
		System.out.println("MyService>getUserList()");

		return myDao.getUserList(no);
	};

	// 유저번호로 예약완료 리스트 불러오기
	public List<MyListVo> getReserveList(int no) {
		System.out.println("MyService>getReserveList()");

		return myDao.getReserveList(no);
	}

	// 유저번호로 이용완료 리스트 불러오기
	public List<MyListVo> getUsedList(int no) {
		System.out.println("MyService>getUsedList()");

		return myDao.getUsedList(no);
	}

	// 유저번호로 예약취소 리스트 불러오기
	public List<MyListVo> getCancelList(int no) {
		System.out.println("MyService>getCancelList()");

		return myDao.getCancelList(no);
	}

	// 유저번호로 양도대기 리스트 불러오기
	public List<MyListVo> getRelistList(int no) {
		System.out.println("MyService>getRelistList()");

		return myDao.getRelistList(no);
	}

	// 유저번호로 양도완료 리스트 불러오기
	public List<MyListVo> getTransferList(int no) {
		System.out.println("MyService>getTransferList()");

		return myDao.getTransferList(no);
	}

	// 예약번호로 예약상세 정보 불러오기
	public List<MyListVo> getDetail(int resNo) {
		System.out.println("MyService>getDetail()");

		return myDao.getDetail(resNo);
	}

	// 예약취소시 -> 예약상태 업데이트
	public int cancelUpdate(MyListVo myVo) {
		System.out.println("MyService>cancelUpdate");

		return myDao.cancelUpdate(myVo);
	}

	// 예약내역 삭제하기
	public int remove(int resNo) {
		System.out.println("MyService>remove()");

		return myDao.remove(resNo);
	}

}
