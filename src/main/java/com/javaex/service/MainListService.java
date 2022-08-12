package com.javaex.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainListDao;

@Service
public class MainListService {
	
	@Autowired
	private MainListDao mainDao;
	
	public Map<String, Object> select(int penNo){
		System.out.println("mainService>select");
		
		Map<String, Object> pensionMap = mainDao.select(penNo);
		
		return pensionMap;
	}
	
}
