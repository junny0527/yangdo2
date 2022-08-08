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
	
	public Map<String, Object> select(int pensionNo, int crtPage) {
		System.out.println("DetailService > select()");
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		Map<String, Object> pInfo = detailDao.select(pensionNo);
		Map<String, Object> totalReview = detailDao.totalReview(pensionNo);
		List<Map<String, Object>> imgList = detailDao.imgList(pensionNo);
		System.out.println(pInfo);
		System.out.println(imgList);
		pMap.put("pInfo", pInfo);
		pMap.put("imgList", imgList);
		pMap.put("totalReview", totalReview);
		
		//현재페이지
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);
		
		//페이지 글개수
		int listCnt = 6;
		//시작 글번호
		int startRnum = (crtPage - 1) * listCnt + 1;
		//마지막 글번호
		int endRnum = (startRnum + listCnt) -1;
		
		List<PensionImageVo> boardList = detailDao.selectList4(startRnum, endRnum);
		System.out.println("boarList::::::::::::" + boardList);
		
		
		
		
		////////////////////////////////////////////
		//					페이징계산				  //
		////////////////////////////////////////////
		
		//전체글갯수
		int totalCnt = detailDao.selectTotalCnt();	
		System.out.println("totalCnt :" + totalCnt);
		
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
		
		
		pMap.put("boardList", boardList);
		pMap.put("prev", prev);
		pMap.put("startPageBtnNo", startPageBtnNo);
		pMap.put("endPageBtnNo", endPageBtnNo);
		pMap.put("next", next);
		
		return pMap;
	}
	
	public Map<String, Object> pensionImg(int pensionNo, int crtPage) {
		System.out.println("DetailService > pensionImg()");
		
		Map<String, Object> imgMap = new HashMap<String, Object>();
		
		List<Map<String, Object>> imgList = detailDao.imgList(pensionNo);
		imgMap.put("imgList", imgList);
		
			//현재페이지
			crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);
			
			//페이지 글개수
			int listCnt = 6;
			//시작 글번호
			int startRnum = (crtPage - 1) * listCnt + 1;
			//마지막 글번호
			int endRnum = (startRnum + listCnt) -1;
			
			List<PensionImageVo> boardList = detailDao.selectList4(startRnum, endRnum);
			System.out.println("boarList::::::::::::" + boardList);
			
			
			
			
			////////////////////////////////////////////
			//					페이징계산				  //
			////////////////////////////////////////////
			
			//전체글갯수
			int totalCnt = detailDao.selectTotalCnt();	
			System.out.println("totalCnt :" + totalCnt);
			
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
			
			
			Map<String, Object> pMap = new HashMap<String, Object>();
			pMap.put("boardList", boardList);
			pMap.put("prev", prev);
			pMap.put("startPageBtnNo", startPageBtnNo);
			pMap.put("endPageBtnNo", endPageBtnNo);
			pMap.put("next", next);
			return pMap;
		
		
		
	}
	
	
	
}
