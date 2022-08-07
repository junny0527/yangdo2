package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DetailDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public Map<String, Object> select(int pensionNo) {
		System.out.println("DetailDao > select()");
		Map<String, Object> pMap = sqlSession.selectOne("detail.select", pensionNo);
		return pMap;
	}
	
	public List<Map<String, Object>> imgList(int pensionNo) {
		System.out.println("DetailDao > imgList()");
		List<Map<String, Object>> imgList = sqlSession.selectList("detail.imgList", pensionNo);
		return imgList;
	}
	
	public Map<String, Object> totalReview(int pensionNo) {
		System.out.println("DetailDao > totalReview()");
		Map<String, Object> totalReview = sqlSession.selectOne("detail.totalReview", pensionNo);
		return totalReview;
	}
	
	
	
}
