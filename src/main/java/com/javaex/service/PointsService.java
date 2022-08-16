package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.PointsDao;
import com.javaex.vo.PointsVo;

@Service
public class PointsService {

	@Autowired
	private PointsDao pointsDao;
	
	/*
	 * public void pointsInsert(PointsVo pointsVo){
	 * pointsDao.pointsInsert(pointsVo); }
	 */
	
	public void pointUpdate(PointsVo pointsVo){
		
		pointsDao.pointsUpdate(pointsVo);
	}
}
