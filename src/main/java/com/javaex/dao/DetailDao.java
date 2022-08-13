package com.javaex.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PensionImageVo;

@Repository
public class DetailDao {
	
	@Autowired
	SqlSession sqlSession;
	
	//펜션정보 가져오기
	public Map<String, Object> select(int pensionNo) {
		System.out.println("DetailDao > select()");
		Map<String, Object> pMap = sqlSession.selectOne("detail.select", pensionNo);
		return pMap;
	}
	
	//펜션 별점 및 리뷰 가져오기
	public Map<String, Object> totalReview(int pensionNo) {
		System.out.println("DetailDao > totalReview()");
		Map<String, Object> totalReview = sqlSession.selectOne("detail.totalReview", pensionNo);
		return totalReview;
	}
	
	//리스트(일반)
	public List<PensionImageVo> imgList(int pensionNo, int startRnum, int endRnum) {
		System.out.println("DetailDao > imgList()");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		map.put("pensionNo", pensionNo);
		List<PensionImageVo> imgList = sqlSession.selectList("detail.selectList", map);
		return imgList;
	}
	
	//전체글 개수
	public int selectTotalCnt(int pensionNo) {
		System.out.println("DetailDao > selectTotalCnt()");
		
		int totalCnt = sqlSession.selectOne("detail.selectTotalCnt", pensionNo);
		
		return totalCnt;
	}
	
	//편의시설 리스트
	public List<Map<String, Object>> pAmenList(int pensionNo) {
		System.out.println("DetailDao > pAmenList()");
		
		List<Map<String, Object>> pAmenList = sqlSession.selectList("detail.pAmenList", pensionNo);
		return pAmenList;
	}
		
	//공용시설 리스트
	public List<Map<String, Object>> pPubList(int pensionNo) {
		System.out.println("DetailDao > pPubList()");
		
		List<Map<String, Object>> pPubList = sqlSession.selectList("detail.pPubList", pensionNo);
		return pPubList;
	}	
		
	//객실 방 번호 리스트 가져오기
	public List<Map<String, Object>> roomNo(int pensionNo) {
		System.out.println("DetailDao > roomNo()");
		
		List<Map<String, Object>> roomNo = sqlSession.selectList("detail.roomNo", pensionNo);
		return roomNo;
	}
	
	//예약객실 리스트 가져오기
	/*
	public List<Map<String, Object>> reservation(int pensionNo) {
		System.out.println("DetailDao > reservation()");
		
		List<Map<String, Object>> reservation = sqlSession.selectList("detail.reservation", pensionNo);
		return reservation;
	}
	*/
	//객실 정보 가져오기 (ajax)
	public List<Map<String, Object>> roomInfoList(int pensionNo, int roomNo) {
		System.out.println("DetailService > roomInfo");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pensionNo", pensionNo);
		map.put("roomNo", roomNo);
		
		List<Map<String, Object>> roomInfoList = sqlSession.selectList("detail.roomInfoList", map);
		
		return roomInfoList;
	}
	
	//비수기 평일 요금정보 리스트 가져오기
	/*
	public List<Map<String, Object>> lowWeekDay(int pensionNo) {
		System.out.println("DetailService > lowSeason");
		
		List<Map<String, Object>> lowWeekDay = sqlSession.selectList("detail.lowWeekDay", pensionNo);
		System.out.println(lowWeekDay);
		
		
		return lowWeekDay;
	}
	
	//비수기 주말 요금정보 리스트 가져오기
		public List<Map<String, Object>> lowWeekEnd(int pensionNo) {
			System.out.println("DetailService > lowSeason");
			
			List<Map<String, Object>> lowWeekEnd = sqlSession.selectList("detail.lowWeekEnd", pensionNo);
			System.out.println(lowWeekEnd);
			
			
			return lowWeekEnd;
		}
	*/
	
	
}
