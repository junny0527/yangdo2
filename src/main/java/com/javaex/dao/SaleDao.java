package com.javaex.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ReservationVo;

@Repository
public class SaleDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public Map<String,Object> getReservation(int no) {
		System.out.println("SaleDao > getReservation");
		
		Map<String,Object> sMap = sqlSession.selectOne("sale.getReservation", no);
		
		return sMap;
	}
	
	public int yangdoUpdate(ReservationVo reservationVo) {
		System.out.println("SaleDao  > yangdoUpdate");
		int count = sqlSession.update("sale.yangdoUpdate", reservationVo);
		
		return count;
	}
}
