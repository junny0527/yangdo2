package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostReplyVo;
import com.javaex.vo.HostReviewsVo;

@Repository
public class HostReviewsDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<HostReviewsVo> getReviewsList(int pensionNo){
		return sqlSession.selectList("HostReviews.getReviewsList", pensionNo);
	}
	
	public List<HostReplyVo> getReply() {
		List<HostReplyVo> getReply = sqlSession.selectList("HostReviews.getReply");
		System.out.println("Dao reply : " + getReply);
		return getReply;
	}
	
	public int insertReply(HostReplyVo replyVo) {
		System.out.println("dao");
		int count = sqlSession.insert("HostReviews.insertReply", replyVo);
		return count;
	}
	
	public int updateReply(HostReplyVo replyVo) {
		System.out.println("dao");
		int count = sqlSession.update("HostReviews.updateReply", replyVo);
		return count;
	}
	
}
