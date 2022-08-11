package com.javaex.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.RePayVo;

@Repository
public class RePayDao {
	private static final String SQLMAP = "repay.";
	@Autowired
	private SqlSession sqlSession;
	
	// 예약+양도예약 정보 가져오기
	public Map<String, Object> getRePay(int no) {
		System.out.println("RePayDao > getRePay");

		Map<String, Object> rpMap = sqlSession.selectOne(SQLMAP + "getRePay", no);
		System.out.println(rpMap);

		return rpMap;
	}
	
	// 양도 저장
	public Integer PayInsert(RePayVo bean) {
		return sqlSession.insert(SQLMAP + "PayInsert", bean);
	}
	
	public int yangdoUpdate(RePayVo bean) {
		return sqlSession.update(SQLMAP+ "yangdoPayUpdate", bean);
	}
	
	public int yangdoInsert(RePayVo bean) {
		return sqlSession.insert(SQLMAP+ "yangdoPayInsert", bean);
	}
	
}
