package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostRoomDao;
import com.javaex.vo.HostRoomsVo;
import com.javaex.vo.PriceVo;
import com.javaex.vo.WeekVo;

@Service
public class HostRoomService {

	@Autowired
	private HostRoomDao hostRoomDao;

	
	//방저장
	public int roomSave(HostRoomsVo rVo) {
		System.out.println("HostRoomService > roomSave");
		
		// 펜션넘버 정해주기
		int userNo = rVo.getUserNo();
		int pensionNo = hostRoomDao.getPensionNo(userNo);
		rVo.setPensionNo(pensionNo);
		// 룸생성
		int count = hostRoomDao.roomInsert(rVo);

		// 룸넘버꺼내기
		int roomNo = rVo.getNo();

		
		
		// 요금(기본비수기1)
		// vo꺼내기
		PriceVo pVo = new PriceVo();
		// 프라이스 정해주기
		int price = rVo.getGbPrice1();

		// Vo에 값 넣어주기
		pVo.setSortation(3); // 비수기
		pVo.setRoomNo(roomNo); // 룸넘버
		pVo.setPrice(price); // 요금

		// 방요금생성
		hostRoomDao.roomPriceInsert(pVo);

		// 요일
		WeekVo wVo = new WeekVo();

		List<String> weeks = rVo.getGbWeeks1();
		// price넘버
		int pNo = pVo.getNo();

		wVo.setPriceNo(pNo);

		for (int i = 0; i < weeks.size(); i++) {
			wVo.setWeekName(weeks.get(i));
			hostRoomDao.roomPriceWeekInsert(wVo);
		}

		// 기본 비수기2
		price = rVo.getGbPrice2();

		pVo.setSortation(3); // 비수기
		pVo.setRoomNo(roomNo); // 룸넘버
		pVo.setPrice(price); // 요금

		hostRoomDao.roomPriceInsert(pVo);

		weeks = rVo.getGbWeeks2();
		pNo = pVo.getNo();

		wVo.setPriceNo(pNo);

		for (int i = 0; i < weeks.size(); i++) {
			wVo.setWeekName(weeks.get(i));
			hostRoomDao.roomPriceWeekInsert(wVo);
		}

		// 준성수기 1
		price = rVo.getJsPrice1();

		pVo.setSortation(2); // 비수기
		pVo.setRoomNo(roomNo); // 룸넘버
		pVo.setPrice(price); // 요금

		hostRoomDao.roomPriceInsert(pVo);

		weeks = rVo.getJsWeeks1();
		pNo = pVo.getNo();

		wVo.setPriceNo(pNo);

		for (int i = 0; i < weeks.size(); i++) {
			wVo.setWeekName(weeks.get(i));
			hostRoomDao.roomPriceWeekInsert(wVo);
		}

		// 준성수기 2
		price = rVo.getJsPrice2();

		pVo.setSortation(2); // 비수기
		pVo.setRoomNo(roomNo); // 룸넘버
		pVo.setPrice(price); // 요금

		hostRoomDao.roomPriceInsert(pVo);

		weeks = rVo.getJsWeeks2();

		pNo = pVo.getNo();

		wVo.setPriceNo(pNo);

		for (int i = 0; i < weeks.size(); i++) {
			wVo.setWeekName(weeks.get(i));
			hostRoomDao.roomPriceWeekInsert(wVo);
		}
		
		
		// 성수기 1
		price = rVo.getsPrice1();

		pVo.setSortation(1); // 비수기
		pVo.setRoomNo(roomNo); // 룸넘버
		pVo.setPrice(price); // 요금

		hostRoomDao.roomPriceInsert(pVo);

		weeks = rVo.getsWeeks1();
		
		pNo = pVo.getNo();

		wVo.setPriceNo(pNo);

		for (int i = 0; i < weeks.size(); i++) {
			wVo.setWeekName(weeks.get(i));
			hostRoomDao.roomPriceWeekInsert(wVo);
		}
		
		
		// 성수기 2
		price = rVo.getsPrice2();

		pVo.setSortation(1); // 비수기
		pVo.setRoomNo(roomNo); // 룸넘버
		pVo.setPrice(price); // 요금

		hostRoomDao.roomPriceInsert(pVo);

		weeks = rVo.getsWeeks2();
		
		pNo = pVo.getNo();

		wVo.setPriceNo(pNo);

		for (int i = 0; i < weeks.size(); i++) {
			wVo.setWeekName(weeks.get(i));
			hostRoomDao.roomPriceWeekInsert(wVo);
		}
		
		
		return count;
	}
	
}
