package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PensionImageVo;

@Repository
public class MainListDao {
	@Autowired
	private SqlSession sqlSession;
	
	// 펜션정보
	public Map<String, Object> select(int areaNo){
		System.out.println("mainDao>select");
		
		Map<String, Object> penMapList =  sqlSession.selectOne("MainList.penSelect", areaNo);
		System.out.println(penMapList);
		
		return penMapList;
	}
	
	//댓글 수
	public int selectTotalCnt() {
		System.out.println("mainDao>selectTotqalCnt");
		
		int totalCnt = sqlSession.selectOne("MainList.selectTotalCnt");
		
		return totalCnt;
		
	}
	
}
