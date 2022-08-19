package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainListDao;
import com.javaex.vo.MainListVo;

@Service
public class MainListService {
	
	@Autowired
	private MainListDao mainDao;
	
	/*
	public List<MainListVo> select(int areaNo){
		System.out.println("mainService>select");
		
		
		// 펜션정보
		List<MainListVo> mainList = mainDao.select(areaNo);
		
		
		return mainList;
	}
	*/
	
	//지역 조건으로 펜션리스트
	public Map<String, Object> select(int areaNo, String datepicker, String datepicker2){
		System.out.println("Service>select");
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		System.out.println("pMap"+pMap);
		
		//펜션 정보 리스트 가져오기
		List<Map<String, Object>> pList = mainDao.select(areaNo);
		System.out.println("test"+pList);
		
		//날짜 조건으로 지역 리스트
		List<Map<String, Object>> dList = mainDao.dateSelect(areaNo, datepicker, datepicker2);
		
		pMap.put("pList", pList);
		pMap.put("dList", dList);
		return pMap;
	}
	
	
	
	
	
}
