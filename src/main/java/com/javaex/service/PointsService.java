package com.javaex.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.PointsDao;
import com.javaex.vo.MyPointVo;

@Service
public class PointsService {
	@Autowired
	private PointsDao pointsDao;
	
//===========================================================================================================
	//포인트 가져오기
	public Map<String, Object> getpoints(int userNo) {
		Map<String, Object> poMap = pointsDao.getpoints(userNo);
		
		return poMap;
	}
	
//===========================================================================================================	
	
	public List<MyPointVo> getUserPoint(int userNo){
		
		List<MyPointVo> pList = pointsDao.getUserPoint(userNo);
		
		return pList;
	}
}
