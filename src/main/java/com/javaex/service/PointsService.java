package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.PointsDao;

@Service
public class PointsService {
	@Autowired
	private PointsDao pointsDao;

	public int getpoints(int userNo) {
		return pointsDao.getpoints(userNo);

	}
}
