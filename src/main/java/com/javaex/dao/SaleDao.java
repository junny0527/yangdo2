package com.javaex.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SaleDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public Map<String,Object> getReservation(int no) {
		System.out.println("SaleDao > getReservation");
		
		Map<String,Object> sMap = sqlSession.selectOne("reservation.getReservation", no);
		System.out.println(sMap);
		
		return sMap;
	}
}
