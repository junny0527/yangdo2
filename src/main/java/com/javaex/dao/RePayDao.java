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
	
	// 저장
	public void PayInsert(RePayVo bean) {
		 sqlSession.insert(SQLMAP + "PayInsert", bean);
	}
	
	public void yangdoUpdate(RePayVo bean) {
		sqlSession.update(SQLMAP+ "yangdoPayUpdate", bean);
	}
	
	public void yangdoInsert(RePayVo bean) {
		 sqlSession.insert(SQLMAP+ "yangdoPayInsert", bean);
	}
	
}
