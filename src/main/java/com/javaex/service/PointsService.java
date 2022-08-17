package com.javaex.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.PointsDao;

@Service
public class PointsService {
	@Autowired
	private PointsDao pointsDao;

	public Map<String, Object> getpoints(int userNo) {
		Map<String, Object> poMap = pointsDao.getpoints(userNo);
		
		return poMap;
	}
}
