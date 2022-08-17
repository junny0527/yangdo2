package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.RePayVo;

@Repository
public class PointsDao {
	private static final String SQLMAP = "points.";
	@Autowired
	private SqlSession sqlSession;

	// 사용포인트 넣어주기
	public void pointsInsert(RePayVo bean) {
		sqlSession.insert(SQLMAP + "pointsInsert", bean);
	}

	// 포인트 뽑아오기
	public int getpoints(int userNo) {
		return sqlSession.selectOne(SQLMAP + "getpoint", userNo);

	}

}
