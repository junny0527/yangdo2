package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainListDao;
import com.javaex.vo.MainSearchVo;

@Service
public class MainListService {
	
	@Autowired
	private MainListDao mainDao;
	
	
	
	//지역 조건으로 펜션리스트
	public Map<String, Object> select(int areaNo){
		System.out.println("Service>select");
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		System.out.println("pMap"+pMap);
		
		//펜션 정보 리스트 가져오기
		List<Map<String, Object>> pList = mainDao.select(areaNo);
		System.out.println("test"+pList);
		
		pMap.put("pList", pList);
		System.out.println("pList"+pList);
		
		return pMap;
	}
	
	//체크박스
	public Map<String, Object> selectSearch(MainSearchVo searchVo){
		System.out.println("Service>search");
		
		Map<String, Object> pMap = new HashMap<String,Object>();
		
		List<Map<String, Object>> pList = mainDao.selectSearch(searchVo);
		System.out.println(pList);
		
		pMap.put("pList", pList);
		return pMap;
	}
	
}
