package com.javaex.service;

import java.util.List;

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
	public List<MainSearchVo> selectLowprice(MainSearchVo searchVo){
		System.out.println("service>lowprice");
		
		List<MainSearchVo> pList = mainDao.selectLowprice(searchVo);
		
		return pList;
		
	}
	
	//높은 가격순 리스트
	public List<MainSearchVo> selectHighprice(MainSearchVo searchVo){
		System.out.println("service>highprice");
		
		List<MainSearchVo> pList = mainDao.selectHighprice(searchVo);
		
		return pList;
		
	}
	
	//추천별 리스트
	public List<MainSearchVo> selectHit(MainSearchVo searchVo){
		System.out.println("service>selectHit");
		
		List<MainSearchVo> pList = mainDao.selectHit(searchVo);
		
		return pList;
		
	}
	
	//체크박스
	public List<MainListVo> selectSearch(MainSearchVo searchVo){
		System.out.println("service>search");
		
		if(searchVo.getyCount() == 1) {
			List<MainListVo> pList = mainDao.selectySearch(searchVo);
			
			System.out.println("searchServicePLIST"+pList);
			
			return pList;
		}else {
			List<MainListVo> pList = mainDao.selectSearch(searchVo);
		
			System.out.println("searchServicePLIST"+pList);
			
			return pList;
		}
	}
	
}
