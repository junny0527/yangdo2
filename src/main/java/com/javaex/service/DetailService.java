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
	public Map<String, Object> select(int pensionNo, int crtPage) {
		System.out.println("DetailService > select()");

		//맵 생성
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		//펜션정보
		Map<String, Object> pInfo = detailDao.select(pensionNo);
		//펜션 리뷰 및 별점
		Map<String, Object> totalReview = detailDao.totalReview(pensionNo);
		
		//펜션 편의시설 
		List<Map<String, Object>> pAmenList = detailDao.pAmenList(pensionNo);
		 
		//펜션 공용시설 
		List<Map<String, Object>> pPubList = detailDao.pPubList(pensionNo);
		
		//펜션 방 정보리스트 가져오기
		List<Map<String, Object>> roomList = detailDao.roomList(pensionNo);
		
		//객실번호 그룹 가져오기
		List<Map<String, Object>> roomNo = detailDao.roomNo(pensionNo);
		
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
		
		//전체글갯수
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
		
		
		if( (listCnt * endPageBtnNo) < totalCnt ) {// ex) 50 < 127 true
			next = true;
		}else {
			endPageBtnNo = (int)Math.ceil(totalCnt / (double)listCnt);
		}
		
		if( (startPageBtnNo != 1) ) {	// 
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
		pMap.put("roomList", roomList);
		pMap.put("roomNo", roomNo);
		
		return pMap;
	}
	
	
	
	
	
	

	
	
	
}
