package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostReservationVo;
import com.javaex.vo.PointsVo;

@Repository
public class HostReservationDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int getPensionNo(int userNo) {
		return sqlSession.selectOne("HostIntroduce.getPensionNoBySession");
	}
	
	public List<HostReservationVo> getList(int userNo){
		System.out.println("dao");
		List<HostReservationVo> getList = sqlSession.selectList("HostReservation.getList", userNo);
		return getList;
	}
	
	public HostReservationVo getReserve(HostReservationVo hVo) {
		return sqlSession.selectOne("HostReservation.getReserve", hVo);
	}
	
	public int givePoint(PointsVo pVo) {
		System.out.println("dao" + pVo);
		return sqlSession.insert("HostReservation.pointsInsert", pVo);
	}
	
	public int changestatusUsed(int reserveNo) {
		return sqlSession.update("HostReservation.changestatusUsed", reserveNo);
	}
	
	public int changestatusReserveCancel(int reserveNo) {
		return sqlSession.update("HostReservation.changestatusReserveCancel", reserveNo);
	}
	
	public int changestatusRoomCheckin(int reserveNo) {
		return sqlSession.update("HostReservation.changestatusRoomCheckin", reserveNo);
	}
	
	
}
