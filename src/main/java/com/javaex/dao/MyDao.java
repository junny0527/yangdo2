package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MyListVo;
import com.javaex.vo.UserReviewVo;
import com.javaex.vo.UserVo;

@Repository
public class MyDao {

	@Autowired
	private SqlSession sqlSession;

	// 유저번호로 전체 리스트 불러오기
	public List<MyListVo> getUserList(int no) {
		System.out.println("MyDao>getUserList()");

		return sqlSession.selectList("my.getUserList", no);
	}

	// 유저번호로 예약완료 리스트 불러오기
	public List<MyListVo> getReserveList(int no) {
		System.out.println("MyDao>getReserveList()");
		return sqlSession.selectList("my.getReserveList", no);
	}

	// 유저번호로 이용완료 리스트 불러오기
	public List<MyListVo> getUsedList(int no) {
		System.out.println("MyDao>getUsedList()");

		return sqlSession.selectList("my.getUsedList", no);
	}

	// 유저번호로 예약취소 리스트 불러오기
	public List<MyListVo> getCancelList(int no) {
		System.out.println("MyDao>getCancelList()");

		return sqlSession.selectList("my.getCancelList", no);
	}

	// 유저번호로 양도대기 리스트 불러오기
	public List<MyListVo> getRelistList(int no) {
		System.out.println("MyDao>getRelistList()");

		return sqlSession.selectList("my.getRelistList", no);
	}

	// 유저번호로 양도완료 리스트 불러오기
	public List<MyListVo> getTransferList(int no) {
		System.out.println("MyDao>getTransferList()");

		return sqlSession.selectList("my.getTransferList", no);
	}

	// 예약번호로 예약상세 정보 불러오기
	public MyListVo getDetail(int resNo) {
		System.out.println("MyDao>getDetail()");

		return sqlSession.selectOne("my.getDetail", resNo);
	}

	// 예약취소하기 -> 예약상태 업데이트하기
	public int cancelUpdate(int no) {
		System.out.println("MyDao>cancelUpdate");

		return sqlSession.update("my.updateCancel", no);
	}

	// 예약내역 삭제하기
	public int remove(int no) {
		System.out.println("MyDao>remove()");

		return sqlSession.delete("my.updateRemove", no);
	};

	// 유저 정보 관리하기
	public UserVo getUserInfo(int no) {
		System.out.println("MyDao>getUserInfo()");

		return sqlSession.selectOne("my.getUserInfo", no);
	}

	// 유저 정보 -> 닉네임 업데이트
	public int updateNickName(UserVo uVo) {
		System.out.println("MyDao>updateNickName()");

		return sqlSession.update("my.updateNickName", uVo);
	}

	// 유저 정보 -> 핸드폰번호 업데이트
	public int updateHp(UserVo uVo) {
		System.out.println("MyDao>updateHp()");

		return sqlSession.update("my.updateHp", uVo);
	}

	// 유저 정보 -> 비밀번호 업데이트
	public int updatePw(UserVo uVo) {
		System.out.println("MyDao>updatePw()");

		return sqlSession.update("my.updatePw", uVo);
	}

	// 유저 정보 -> 비밀번호 업데이트
	public int updateId(UserVo uVo) {
		System.out.println("MyDao>updateId()");

		return sqlSession.update("my.updateId", uVo);
	}

	// 리뷰 등록하기
	public int writeReview(UserReviewVo uRvo) {
		System.out.println("MyDao>writeReview()");

		return sqlSession.insert("my.insertReview", uRvo);
	}

	// 리뷰 업데이트 하기
	public int updateReview(UserReviewVo uRvo) {
		System.out.println("MyDao>updateReview()");

		return sqlSession.update("my.reviewModify", uRvo);
	}

	// 리뷰 리스트 가져오기
	public List<UserReviewVo> getReview(int resNo) {
		System.out.println("MyDao>getReview()");

		return sqlSession.selectList("my.getReview", resNo);
	}

	// 리뷰 달았는지 안 달았는지
	public int checkReview(int resNo) {
		System.out.println("MyDao>checkReview()");

		return sqlSession.selectOne("my.checkReview", resNo);
	}
}
