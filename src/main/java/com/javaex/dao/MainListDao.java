package com.javaex.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MainListDao {
	
	private SqlSession sqlSession;
	
	public Map<String, Object> select(int penNo){
		
		Map<String, Object> pensionMap = sqlSession.selectOne("MainList.penSelect", penNo);
		
		return pensionMap;
	}
	
}
