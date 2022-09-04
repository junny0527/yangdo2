package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.MyDao;
import com.javaex.vo.MyListVo;
import com.javaex.vo.UserReviewVo;
import com.javaex.vo.UserVo;

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
	public Map<String, Object> getDetail(int resNo) {
		System.out.println("MyService>getDetail()");

		Map<String, Object> dMap = new HashMap<String, Object>();
		dMap.put("myVo", myDao.getDetail(resNo));
		dMap.put("check", myDao.checkReview(resNo));

		return dMap;
	}

	// 예약취소시 -> 예약상태 업데이트
	public int cancelUpdate(int no) {
		System.out.println("MyService>cancelUpdate");

		return myDao.cancelUpdate(no);
	}

	// 예약내역 삭제하기
	public int remove(int no) {
		System.out.println("MyService>remove()");

		return myDao.remove(no);
	}

	// 유저 정보 관리하기
	public UserVo getUserInfo(int no) {
		System.out.println("MyService>getUserInfo()");

		return myDao.getUserInfo(no);
	}

	// 유저 정보 -> 닉네임 업데이트
	public int updateNickName(UserVo uVo) {
		System.out.println("MyService>updateNickName()");

		return myDao.updateNickName(uVo);
	}

	// 유저 정보 -> 핸드폰번호 업데이트
	public int updateHp(UserVo uVo) {
		System.out.println("MyService>updateHp()");

		return myDao.updateHp(uVo);
	}

	// 유저 정보 -> 비밀번호 업데이트
	public int updatePw(UserVo uVo) {
		System.out.println("MyService>updatePw()");

		return myDao.updatePw(uVo);
	}

	// 리뷰 작성하기
	public int writeReview(UserReviewVo uRvo) {
		System.out.println("MyService>writeReview()");

		String saveDir = "C:\\javaStudy\\upload";
		MultipartFile img1 = uRvo.getImg1();
		MultipartFile img2 = uRvo.getImg2();

		if (img1.isEmpty()) {
			uRvo.setImage1(null);
		} else if (!img1.isEmpty()) {

			String exName = img1.getOriginalFilename().substring(img1.getOriginalFilename().lastIndexOf("."));
			System.out.println(exName);
			String image1 = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			String filePath1 = saveDir + "\\" + image1;

			try {
				byte[] fileData = img1.getBytes();
				OutputStream out = new FileOutputStream(filePath1);
				BufferedOutputStream bOut = new BufferedOutputStream(out);
				bOut.write(fileData);
				bOut.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			uRvo.setImage1(image1);
		}

		if (img2.isEmpty()) {
			uRvo.setImage2(null);
		} else if (!img2.isEmpty()) {

			String exName = img2.getOriginalFilename().substring(img2.getOriginalFilename().lastIndexOf("."));
			String image2 = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			String filePath2 = saveDir + "\\" + image2;

			try {
				byte[] fileData = img2.getBytes();
				OutputStream out = new FileOutputStream(filePath2);
				BufferedOutputStream bOut = new BufferedOutputStream(out);

				bOut.write(fileData);
				bOut.close();
			} catch (IOException e) {
				e.printStackTrace();

			}
			uRvo.setImage2(image2);
		}
		return myDao.writeReview(uRvo);
	}

	public List<UserReviewVo> getReview(int resNo) {
		System.out.println("MyService>writeReview()");

		return myDao.getReview(resNo);

	}

	/*
	 * public int updateReview(int resNo) {
	 * System.out.println("MyService>updateReview()");
	 * 
	 * String saveDir = "C:\\javaStudy\\upload";
	 * 
	 * if (img1.isEmpty()) { uRvo.setImage1(null); } else if (!img1.isEmpty()) {
	 * 
	 * String exName =
	 * img1.getOriginalFilename().substring(img1.getOriginalFilename().lastIndexOf(
	 * ".")); System.out.println(exName); String image1 = System.currentTimeMillis()
	 * + UUID.randomUUID().toString() + exName; String filePath1 = saveDir + "\\" +
	 * image1;
	 * 
	 * try { byte[] fileData = img1.getBytes(); OutputStream out = new
	 * FileOutputStream(filePath1); BufferedOutputStream bOut = new
	 * BufferedOutputStream(out); bOut.write(fileData); bOut.close(); } catch
	 * (IOException e) { e.printStackTrace(); } uRvo.setImage1(image1); }
	 * 
	 * if (img2.isEmpty()) { uRvo.setImage2(null); } else if (!img2.isEmpty()) {
	 * 
	 * String exName =
	 * img2.getOriginalFilename().substring(img2.getOriginalFilename().lastIndexOf(
	 * ".")); String image2 = System.currentTimeMillis() +
	 * UUID.randomUUID().toString() + exName; String filePath2 = saveDir + "\\" +
	 * image2;
	 * 
	 * try { byte[] fileData = img2.getBytes(); OutputStream out = new
	 * FileOutputStream(filePath2); BufferedOutputStream bOut = new
	 * BufferedOutputStream(out);
	 * 
	 * bOut.write(fileData); bOut.close(); } catch (IOException e) {
	 * e.printStackTrace();
	 * 
	 * } uRvo.setImage2(image2); } return myDao.updateReview(uRvo); }
	 */
}
