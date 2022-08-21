package com.javaex.dao;

import java.util.List;

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

	public HostRoomsVo getRoom(HostRoomsVo rVo) {
		System.out.println("HostRoomDao  > getRoom");
		HostRoomsVo hVo = sqlSession.selectOne("HostRooms.getRoom", rVo);
		
		return hVo;
	}

	public List<PriceVo> getPrice(int roomNo) {
		System.out.println("HostRoomDao  > getPrice");
		
		List<PriceVo> pList = sqlSession.selectList("HostRooms.getRoomPrices", roomNo);
		
		return pList;
	}

	public List<WeekVo> getWeek(int roomNo) {
		System.out.println("HostRoomDao  > getPrice");
		System.out.println(roomNo);
		List<WeekVo> wList = sqlSession.selectList("HostRooms.getRoomWeek", roomNo);
		
		return wList;
	}
	
	public List<HostRoomsVo> roomList(int userNo) {
		System.out.println("HostRoomDao  > roomList");
		
		List<HostRoomsVo> rList = sqlSession.selectList("HostRooms.roomNoList", userNo);
		
		return rList;
	}
}
