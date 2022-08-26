package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostCountVo;
import com.javaex.vo.HostReservationVo;

@Repository
public class HostMainDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<HostReservationVo> getrevList(int pensionNo){
		return sqlSession.selectList("HostMain.getrevList", pensionNo);
	}
	
	public HostCountVo getDays(){
		return sqlSession.selectOne("HostMain.getDays");
	}
	
	public int countReviewsToday(int pensionNo) {
		int count = sqlSession.selectOne("HostMain.countReviewsToday", pensionNo);
		System.out.println("reviewToday : " + count);
		return count;
	}
	
	public int countReviewsWeek(HostCountVo hVo) {
		int count = sqlSession.selectOne("HostMain.countReviewsWeek", hVo);
		System.out.println("reviewWeek : " + count);
		return count;
	}
	
	public int countReviewsMonth(HostCountVo hVo) {
		int count = sqlSession.selectOne("HostMain.countReviewsMonth", hVo);
		System.out.println("reviewWeek : " + count);
		return count;
	}
	
	public int countSalesToday(int pensionNo) {
		int count = sqlSession.selectOne("HostMain.countSalesToday", pensionNo);
		System.out.println("salesToday : " + count);
		return count;
	}
	
	
	public int countSalesWeek(HostCountVo hVo) {
		int count = sqlSession.selectOne("HostMain.countSalesToday", hVo);
		System.out.println("salesWeek : " + count);
		return count;
	}
	
	public int countSalesMonth(HostCountVo hVo) {
		int count = sqlSession.selectOne("HostMain.countSalesToday", hVo);
		System.out.println("salesMonth : " + count);
		return count;
	}
	
	
}
