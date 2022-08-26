package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainListDao;
import com.javaex.vo.MainListVo;
import com.javaex.vo.MainSearchVo;

@Service
public class MainListService {
	
	@Autowired
	private MainListDao mainDao;
	
	
	//기본 펜션리스트
	
	public List<MainSearchVo> main(MainSearchVo searchVo){
		System.out.println("Service>select");
		
		List<MainSearchVo> pList = mainDao.main(searchVo);
		System.out.println("MainService"+pList);
		
		return pList;
		
	}
	
	
	//낮은 가격순 리스트
	public Map<String, Object> selectLowprice(){
		System.out.println("service>lowprice");
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		List<Map<String, Object>> pList = mainDao.selectLowprice();
		
		pMap.put("pList", pList);
		
		return pMap;
		
	}
	
	//높은 가격순 리스트
	public Map<String, Object> selectHighprice(){
		System.out.println("service>highprice");
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		List<Map<String, Object>> pList = mainDao.selectHighprice();
		
		pMap.put("pList", pList);
		
		return pMap;
		
	}
	
	//추천별 리스트
	public Map<String, Object> selectHit(){
		System.out.println("service>selectHit");
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		List<Map<String, Object>> pList = mainDao.selectHit();
		
		pMap.put("pList", pList);
		
		return pMap;
		
	}
	
	//체크박스
	public List<MainListVo> selectSearch(MainSearchVo searchVo){
		System.out.println("service>search");
		
		List<MainListVo> pList = mainDao.selectSearch(searchVo);
		
		System.out.println("searchServicePLIST"+pList);
		
		return pList;
		
	}
	
}
