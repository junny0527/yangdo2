package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PointsVo;
@Repository
public class PointsDao {
	private static final String SQLMAP = "points.";
	@Autowired
	private SqlSession sqlSession;
	
	
	/*
	 * public void pointsInsert(PointsVo bean) { sqlSession.insert(SQLMAP +
	 * "pointsInsert", bean); }
	 */
	
	
	public void pointsUpdate(PointsVo bean) {
		 sqlSession.update(SQLMAP+ "pointsUpdate", bean);
	}
}
