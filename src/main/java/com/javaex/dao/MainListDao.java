package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainListDao {
	@Autowired
	private SqlSession sqlSession;
	
	// 펜션정보
	/*
	public List<MainListVo> select(int areaNo){
		System.out.println("mainDao>select");
		
		List<MainListVo> mainList =  sqlSession.selectList("MainList.penList", areaNo);
		System.out.println(mainList);
		
		return mainList;
	}
	*/
	
	//펜션정보 리스트 가져오기
	public List<Map<String, Object>> select(int areaNo){
		System.out.println("Dao>selectList");
		
		List<Map<String, Object>> pList = sqlSession.selectList("MainList.penList", areaNo);
		System.out.println("pList"+pList);
		
		return pList;
	}
	
	//날짜로 리스트 가져오기
	public List<Map<String, Object>> dateSelect(int areaNo, String datepicker, String datepicker2){
		System.out.println("Dao>dateSelect");
		
		Map<String, Object> dMap = new HashMap<String, Object>();
		
		dMap.put("datepicker2", datepicker2);
		dMap.put("datepicker", datepicker);
		dMap.put("areaNo", areaNo);
		
		List<Map<String,Object>> dList = sqlSession.selectList("MainList.dateList", dMap);
		System.out.println("dateDao" + dList);
		
		return dList;
	}
}
