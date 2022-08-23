package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MainListVo;
import com.javaex.vo.MainSearchVo;

@Repository
public class MainListDao {
	@Autowired
	private SqlSession sqlSession;
	
	//기본 펜션정보 리스트 가져오기
	public List<Map<String, Object>> select(){
		System.out.println("Dao>selectList");
		
		List<Map<String, Object>> pList = sqlSession.selectList("MainList.penList");
		System.out.println("pListDao"+pList);
		
		return pList;
	}
	
	//낮은 가격 순 리스트
	public List<Map<String, Object>> selectLowprice(){
		System.out.println("Dao>lowprice");
		
		List<Map<String, Object>> pList = sqlSession.selectList("MainList.lowpriceList");
		System.out.println("DaolowList --->"+pList);
		
		return pList;
		
	}
	
	//높은 가격 순 리스트
	public List<Map<String, Object>> selectHighprice(){
		System.out.println("Dao>highprice");
		
		List<Map<String, Object>> pList = sqlSession.selectList("MainList.highpriceList");
		System.out.println("DaohighList --->"+pList);
		return pList;
		
	}
	
	//추천별 리스트
	public List<Map<String, Object>> selectHit(){
		System.out.println("Dao>selectHit");
		
		List<Map<String, Object>> pList = sqlSession.selectList("MainList.hitList");
		
		return pList;
		
	}
	
	//체크박스로 리스트 가져오기
	public List<Map<String, Object>> selectSearch(MainSearchVo searchVo){
		System.out.println("Dao>search");
		
		List<Map<String, Object>> searchList = sqlSession.selectList("MainList.searchList", searchVo);
			
		System.out.println("searchList"+searchList);
		
		return searchList;
		
	}
	
	
	
}
