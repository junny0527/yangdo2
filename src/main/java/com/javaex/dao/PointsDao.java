package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MyPointVo;
import com.javaex.vo.RePayVo;

@Repository
public class PointsDao {
	private static final String SQLMAP = "points.";
	@Autowired
	private SqlSession sqlSession;
	
//===========================================================================================================	

	// 사용포인트 넣어주기
	public void pointsInsert(RePayVo bean) {
		sqlSession.insert(SQLMAP + "pointsInsert", bean);
	}
	
//===========================================================================================================	

	// 썸포인트 뽑아오기
	public Map<String, Object> getpoints(int userNo) {
		Map<String, Object> poMap =  sqlSession.selectOne(SQLMAP + "getpoint", userNo);
		
		return poMap;
	}
	
//===========================================================================================================	
	
	// 포인트 가져오기
	public List<MyPointVo> getUserPoint(int userNo){
		
		List<MyPointVo> pList = sqlSession.selectList("points.getUserPoint", userNo);
		
		return pList;
	}
	
}
