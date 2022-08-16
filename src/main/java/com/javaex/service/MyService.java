package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MyDao;
import com.javaex.vo.MyListVo;

@Service
public class MyService {

	@Autowired
	private MyDao myDao;

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

	// // 예약번호로 예약상세 내역 출력하기
	public List<MyListVo> getDetail(int resNo) {
		System.out.println("MyService>getDetail()");

		return myDao.getDetail(resNo);
	}

	// 예약내역(이용완료, 예약취소, 양도완료) 삭제
	public int deleteOne(int no) {
		System.out.println("MyService>deleteOne()");

		return myDao.deleteOne(no);
	}

}
