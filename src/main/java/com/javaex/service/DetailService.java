package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.DetailDao;
import com.javaex.vo.PensionImageVo;

@Service
public class DetailService {
	@Autowired
	DetailDao detailDao;
	
	//펜션리스트 가져오기 (+ 페이징)
	public Map<String, Object> select(int pensionNo, int crtPage, String datepicker, String datepicker2) {
		System.out.println("DetailService > select()");
		//맵 생성
		Map<String, Object> pMap = new HashMap<String, Object>();
		//펜션정보
		Map<String, Object> pInfo = detailDao.select(pensionNo);
		
		String areaName = (String) pInfo.get("LAW_NAME");
		String[] areaNameArray = areaName.split(" ");
		String[] areaArray = areaNameArray[1].split("");
		//지역명 가져오기
		String area = areaArray[0] + areaArray[1];
		
		
		//펜션 리뷰 및 별점(업주+)
		Map<String, Object> totalReview = detailDao.totalReview(pensionNo);
		//펜션 편의시설 
		List<Map<String, Object>> pAmenList = detailDao.pAmenList(pensionNo);
		//펜션 공용시설 
		List<Map<String, Object>> pPubList = detailDao.pPubList(pensionNo);
		//객실번호 그룹 가져오기
		List<Map<String, Object>> roomNo = detailDao.roomNo(pensionNo);
		//날짜에 따른 객실정보 가져오기(예약 후, 양도, 예약 전)
		List<Map<String, Object>> roomList = detailDao.roomList(pensionNo, datepicker, datepicker2);
		//펜션 별 객실 메인사진 보여주기
		List<Map<String, Object>> pensionRoomImg = detailDao.pensionRoomImg(pensionNo);
		//현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);
		//페이지 글개수
		int listCnt = 6;
		//시작 글번호
		int startRnum = (crtPage - 1) * listCnt + 1;
		//마지막 글번호
		int endRnum = (startRnum + listCnt) -1;
		//이미지 리스트 가져오기
		List<PensionImageVo> imgList = detailDao.imgList(pensionNo, startRnum, endRnum);
		
		//전체 사진 개수
		int totalCnt = detailDao.selectTotalCnt(pensionNo);	
		//페이지 당 버튼 갯수
		int pageBtnCount = 6;
		//마지막 버튼 번호
		int endPageBtnNo = (int)Math.ceil(crtPage / (double)pageBtnCount) * pageBtnCount;
		//첫번째 버튼 번호
		int startPageBtnNo = (endPageBtnNo - pageBtnCount) + 1;
		//다음 화살표 유무
		boolean next = true;
		//이전 화살표 유무
		boolean prev = true;
		
		if( (listCnt * endPageBtnNo) < totalCnt ) {
			next = true;
		}else {
			endPageBtnNo = (int)Math.ceil(totalCnt / (double)listCnt);
		}
		
		if( (startPageBtnNo != 1) ) {
			prev = true;
		}
		pMap.put("pInfo", pInfo);
		pMap.put("totalReview", totalReview);
		pMap.put("imgList", imgList);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("totalCnt", totalCnt);
		pMap.put("pAmenList", pAmenList);
		pMap.put("pPubList", pPubList);
		pMap.put("roomNo", roomNo);
		pMap.put("roomList", roomList);
		pMap.put("pensionRoomImg", pensionRoomImg);
		pMap.put("datepicker", datepicker);
		pMap.put("datepicker2", datepicker2);
		pMap.put("crtPage", crtPage);
		pMap.put("area", area);
		pMap.put("imgSize", imgList.size());
		
		
		return pMap;
		
		
	}
	

	//객실 리스트 정보 가져오기 (ajax)
	public List<Map<String, Object>> roomInfoList(int pensionNo, int roomNo) {
		System.out.println("DetailService > roomInfo");
		
		List<Map<String, Object>> roomInfoList = detailDao.roomInfoList(pensionNo, roomNo);
		return roomInfoList;
	}
	
	//객실별 사진 정보 가져오기 (ajax)
	public List<Map<String, Object>> roomImgList(int pensionNo, int roomNo) {
		System.out.println("DetailService > roomInfo");
		
		List<Map<String, Object>> roomImgList = detailDao.roomImgList(pensionNo, roomNo);
		return roomImgList;
	}
	
	//펜션 숙소정보 가져오기 (ajax)
	public Map<String, Object> pensionInfo(int pensionNo) {
		System.out.println("DetailService > pensionInfo");
		
		Map<String, Object> pensionInfo = detailDao.pensionInfo(pensionNo);
		return pensionInfo;
	}
	
	//펜션 리뷰정보 가져오기 (ajax)
	public Map<String, Object> reviewInfo(int pensionNo) {
		System.out.println("DetailService > pensionInfo");
		
		Map<String, Object> rMap = new HashMap<String, Object>();
		Map<String, Object> totalReview = detailDao.totalReview(pensionNo);
		Map<String, Object> hostReview = detailDao.hostReview(pensionNo);
		List<Map<String, Object>> allReview = detailDao.allReview(pensionNo);
		rMap.put("totalReview", totalReview);
		rMap.put("allReview", allReview);
		rMap.put("hostReview", hostReview);
		
		return rMap;
	}
	
}
