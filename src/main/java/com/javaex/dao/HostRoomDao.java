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

	public List<WeekVo> getgb1Week(int roomNo) {
		System.out.println("HostRoomDao  > getPrice");
		
		List<WeekVo> gb1List = sqlSession.selectList("HostRooms.getgb1Week", roomNo);
		
		return gb1List;
	}

	public List<WeekVo> getgb2Week(int roomNo) {
		System.out.println("HostRoomDao  > getPrice");
		
		List<WeekVo> gb2List = sqlSession.selectList("HostRooms.getgb2Week", roomNo);
		
		return gb2List;
	}
	public List<WeekVo> getjs1Week(int roomNo) {
		System.out.println("HostRoomDao  > getPrice");
		
		List<WeekVo> js1List = sqlSession.selectList("HostRooms.getjs1Week", roomNo);
		
		return js1List;
	}
	public List<WeekVo> getjs2Week(int roomNo) {
		System.out.println("HostRoomDao  > getPrice");
		
		List<WeekVo> js2List = sqlSession.selectList("HostRooms.getjs2Week", roomNo);
		
		return js2List;
	}
	public List<WeekVo> gets1Week(int roomNo) {
		System.out.println("HostRoomDao  > getPrice");
		
		List<WeekVo> s1List = sqlSession.selectList("HostRooms.gets1Week", roomNo);
		
		return s1List;
	}
	
	public List<WeekVo> gets2Week(int roomNo) {
		System.out.println("HostRoomDao  > getPrice");
		
		List<WeekVo> s2List = sqlSession.selectList("HostRooms.gets2Week", roomNo);
		
		return s2List;
	}
	
	public List<HostRoomsVo> roomList(int userNo) {
		System.out.println("HostRoomDao  > roomList");
		
		List<HostRoomsVo> rList = sqlSession.selectList("HostRooms.roomNoList", userNo);
		
		return rList;
	}
}
