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
	
	//펜션정보 리스트 가져오기
	public List<Map<String, Object>> select(String guguninfo){
		System.out.println("Dao>selectList");
		
		List<Map<String, Object>> pList = sqlSession.selectList("MainList.penList", guguninfo);
		System.out.println("pListDao"+pList);
		
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
