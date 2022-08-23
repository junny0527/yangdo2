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
	
	/*
	 * // 예약 정보 가져오기 public Map<String, Object> getRePay(int no) {
	 * System.out.println("\t\t RePayDao::getRePay() invoked...");
	 * 
	 * Map<String, Object> rpMap = sqlSession.selectOne(SQLMAP + "getRePay", no);
	 * System.out.println(rpMap);
	 * 
	 * return rpMap; }
	 */
	//양도예약 정보 가져오기
	public Map<String, Object> getyangdoRePay(int no) {
		System.out.println("\t\t RePayDao::getRePay() invoked...");

		Map<String, Object> rpMap = sqlSession.selectOne(SQLMAP + "getyangdoRePay", no);
		System.out.println(rpMap);

		return rpMap;
	}
	
	
	// 저장
	public int PayInsert(RePayVo bean) {
		System.out.println("\t\t RePayService::PayInsert() invoked...");
		return sqlSession.insert(SQLMAP + "PayInsert", bean);
	}
	
	
	
	// 양도 저장+업데이트
	public int yangdoUpdate(RePayVo bean) {
		System.out.println("\t\t RePayService::yangdoUpdate() invoked...");
		return sqlSession.update(SQLMAP+ "yangdoPayUpdate", bean);
	}
	
	public int yangdoInsert(RePayVo bean) {
		System.out.println("\t\t RePayService::yangdoInsert() invoked...");
		return  sqlSession.insert(SQLMAP+ "yangdoPayInsert", bean);
	}
	
}
