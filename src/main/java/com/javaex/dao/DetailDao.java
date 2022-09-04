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
	
	//펜션 별점 및 리뷰 가져오기(업주+)
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
	
	//전체 사진 개수
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
	
	//날짜에 따른 객실정보 가져오기(예약 후, 양도, 예약 전)
	public List<Map<String, Object>> roomList(int pensionNo, String datepicker, String datepicker2) {
		System.out.println("DetailDao > roomList()");
		
		Map<String, Object> roomMap = new HashMap<String, Object>();
		roomMap.put("pensionNo", pensionNo);
		roomMap.put("datepicker", datepicker);
		roomMap.put("datepicker2", datepicker2);
		
		
		
		
		List<Map<String, Object>> roomList = sqlSession.selectList("detail.roomList", roomMap);
		return roomList;
	}
	
	//펜션 별 객실 메인사진 보여주기
	public List<Map<String, Object>> pensionRoomImg(int pensionNo) {
		System.out.println("DetailDao > pensionRoomImg()");
		
		Map<String, Object> roomMap = new HashMap<String, Object>();
		roomMap.put("pensionNo", pensionNo);
		
		List<Map<String, Object>> pensionRoomImg = sqlSession.selectList("detail.pensionRoomImg", pensionNo);
		return pensionRoomImg;
	}
	
	
	//객실 리스트 정보 가져오기 (ajax)
	public List<Map<String, Object>> roomInfoList(int pensionNo, int roomNo) {
		System.out.println("DetailService > roomInfoList");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pensionNo", pensionNo);
		map.put("roomNo", roomNo);
		
		List<Map<String, Object>> roomInfoList = sqlSession.selectList("detail.roomInfoList", map);
		return roomInfoList;
	}
	
	//객실 정보 가져오기 (ajax)
	public List<Map<String, Object>> roomImgList(int pensionNo, int roomNo) {
		System.out.println("DetailService > roomInfo");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pensionNo", pensionNo);
		map.put("roomNo", roomNo);
		
		List<Map<String, Object>> roomImgList = sqlSession.selectList("detail.roomImgList", map);
		return roomImgList;
	}
	
	//펜션 숙소정보 가져오기 (ajax)
	public Map<String, Object> pensionInfo(int pensionNo) {
		System.out.println("DetailService > pensionInfo");
		
		Map<String, Object> pensionInfo = sqlSession.selectOne("pensionInfo",pensionNo);
		return pensionInfo;
	}
	
	//리뷰 가져오기(이용자)
	public List<Map<String, Object>> allReview(int pensionNo) {
		System.out.println("DetailService > allReview");
		
		List<Map<String, Object>> allReview = sqlSession.selectList("detail.allReview", pensionNo);
		return allReview;
	}
	
	
	//hostReview
	public Map<String, Object> hostReview(int pensionNo) {
		System.out.println("DetailService > allReview");
		
		Map<String, Object> hostReview = sqlSession.selectOne("detail.hostReview", pensionNo);
		return hostReview;
	}
	
}
