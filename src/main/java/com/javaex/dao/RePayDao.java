package com.javaex.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RePayDao {

	@Autowired
	private SqlSession sqlSession;

	// 예약+양도예약 정보 가져오기
	public Map<String, Object> getRePay(int no) {
		System.out.println("RePayDao > getRePay");

		Map<String, Object> rpMap = sqlSession.selectOne("repay.getRePay", no);
		System.out.println(rpMap);

		return rpMap;
	}
	
	/*
	 * //예약 인서트 public int reInsert(RePayVo rePayVo) {
	 * 
	 * System.out.println("RePayDao > reInsert"); System.out.println(rePayVo); int
	 * count = sqlSession.insert("repay.payInsert", rePayVo);
	 * System.out.println(count+"인서트됨"); return count; }
	 * 
	 * //양도 예약 업데이트 + 인서트 (순서: 업데이트 후 인서트)
	 * 
	 * //업데이트 public int yangdoUpdate(RePayVo rePayVo) {
	 * System.out.println("RePayDao > yangdoUpdate"); int count =
	 * sqlSession.update("repay.yangdoPayUpdate", rePayVo);
	 * System.out.println(count+"업데이트됨"); return count; }
	 * 
	 * //인서트 public int yangdoInsert(RePayVo rePayVo) {
	 * 
	 * System.out.println("RePayDao > yangdoInsert"); System.out.println(rePayVo);
	 * int count = sqlSession.insert("repay.yangdoPayInsert", rePayVo);
	 * System.out.println(count+"업데이트 후 인서트됨"); return count; }
	 */
}
