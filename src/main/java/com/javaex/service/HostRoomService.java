package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.HostRoomDao;
import com.javaex.vo.HostRoomsVo;
import com.javaex.vo.PriceVo;
import com.javaex.vo.WeekVo;

@Service
public class HostRoomService {

	@Autowired
	private HostRoomDao hostRoomDao;

	
	//방정보 가져오기
	public Map<String,Object> getRoomInfo(HostRoomsVo hVo) {
		
		int roomNo = hVo.getNo();
		int userNo = hVo.getUserNo();
		
		List<HostRoomsVo> rNoList = hostRoomDao.roomList(userNo);
		
		Map<String,Object> rMap = new HashMap<String,Object>();
		
		
		
		HostRoomsVo rVo = hostRoomDao.getRoom(hVo);
		
		List<PriceVo> pList = hostRoomDao.getPrice(roomNo);
		
		
		List<WeekVo> gb1List = hostRoomDao.getgb1Week(roomNo);
		List<WeekVo> gb2List = hostRoomDao.getgb2Week(roomNo);
		List<WeekVo> js1List = hostRoomDao.getjs1Week(roomNo);
		List<WeekVo> js2List = hostRoomDao.getjs2Week(roomNo);
		List<WeekVo> s1List = hostRoomDao.gets1Week(roomNo);
		List<WeekVo> s2List = hostRoomDao.gets2Week(roomNo);
		
		
		
		rMap.put("rVo", rVo);
		rMap.put("pList", pList);
		rMap.put("gb1List", gb1List);
		rMap.put("gb2List", gb2List);
		rMap.put("js1List", js1List);
		rMap.put("js2List", js2List);
		rMap.put("s1List", s1List);
		rMap.put("s2List", s2List);
		rMap.put("rNoList", rNoList);
		
		System.out.println(rMap);
		
		return rMap;
	}
	
	
	// 방저장
	public int roomSave(HostRoomsVo rVo ) {
		System.out.println("HostRoomService > roomSave");
		
		//////////////////////////////방저장
		// 펜션넘버 정해주기
		int userNo = rVo.getUserNo();
		int pensionNo = hostRoomDao.getPensionNo(userNo);
		rVo.setPensionNo(pensionNo);
		// 룸생성
		int count = hostRoomDao.roomInsert(rVo);

		// 룸넘버꺼내기
		int roomNo = rVo.getNo();
		
		/////////////////파일저장
		//이미지 파일 꺼내기
		/*
		 * List<String> imgFile = rVo.getImgfile(); for(int i=0; i<imgFile.size(); i++)
		 * {
		 * 
		 * String saveDir = "C:\\javaStudy\\upload";
		 * 
		 * String orgName = file.getOriginalFilename();
		 * 
		 * String exName = orgName.substring(orgName.lastIndexOf("."));
		 * 
		 * String saveName =
		 * System.currentTimeMillis()+UUID.randomUUID().toString()+exName;
		 * 
		 * String filePath = saveDir +"\\"+ saveName;
		 * 
		 * rVo.setNo(roomNo); hostRoomDao.roomImgInsert(rVo);
		 * 
		 * try { byte[] fileData = file.getBytes(); OutputStream os = new
		 * FileOutputStream(filePath); BufferedOutputStream bos = new
		 * BufferedOutputStream(os);
		 * 
		 * bos.write(fileData); bos.close();
		 * 
		 * } catch (IOException e) { e.printStackTrace(); }
		 * 
		 * }
		 */
		
		
		
		////////////////////요금저장
		// 요금(기본비수기1)
		// vo꺼내기
		PriceVo pVo = new PriceVo();
		// 프라이스 정해주기
		int price = rVo.getGbPrice1();

		// Vo에 값 넣어주기
		pVo.setSortation(3); // 비수기
		pVo.setDivide(1);	//비수기 1라서 1
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
		pVo.setDivide(2);	//pNo 비수기 2라서 2
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
		pVo.setDivide(1);
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
		pVo.setDivide(2);
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
		pVo.setDivide(1);
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
		pVo.setDivide(2);
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
