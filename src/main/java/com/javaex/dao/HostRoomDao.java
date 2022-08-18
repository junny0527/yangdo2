package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostRoomsVo;
import com.javaex.vo.PriceVo;
import com.javaex.vo.WeekVo;

@Repository
public class HostRoomDao {

	@Autowired
	private SqlSession sqlSession;

	public int roomInsert(HostRoomsVo rVo) {
		System.out.println("HostRoomDao  > roomInsert");
		int count = sqlSession.insert("HostRooms.roomInsert", rVo);
		return count;
	}

	public int roomImgInsert(HostRoomsVo rVo) {
		System.out.println("HostRoomDao  > roomImgInsert");

		int count = sqlSession.insert("HostRooms.roomImgInsert", rVo);
		return count;
	}

	public int roomPriceInsert(PriceVo pVo) {
		System.out.println("HostRoomDao  > roomPriceInsert");

		int count = sqlSession.insert("HostRooms.roomPriceInsert", pVo);

		return count;
	}

	public int roomPriceWeekInsert(WeekVo wVo) {
		System.out.println("HostRoomDao  > roomPriceWeekInsert");
		
		int count = sqlSession.insert("HostRooms.roomPriceWeekInsert", wVo);
		
		return count;
	}

	public int getPensionNo(int userNo) {
		System.out.println("HostRoomDao  > getPensionNo");
		int pNo = sqlSession.selectOne("HostIntroduce.getPensionNoBySession", userNo);

		return pNo;
	}
}
