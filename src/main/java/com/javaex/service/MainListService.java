package com.javaex.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainListDao;
import com.javaex.vo.PensionImageVo;

@Service
public class MainListService {
	
	@Autowired
	private MainListDao mainDao;
	
	public Map<String, Object> select(int areaNo){
		System.out.println("mainService>select");
		
		// 펜션정보
		Map<String, Object> penMapList = mainDao.select(areaNo);
		
		
		
		return penMapList;
	}
	
}
