package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostReviewsVo;

@Repository
public class HostReviewsDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<HostReviewsVo> getReviewsList(int pensionNo){
		return sqlSession.selectList("HostReviews.getReviewsList", pensionNo);
	}
	
	
}
