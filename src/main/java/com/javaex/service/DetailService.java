package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.DetailDao;

@Service
public class DetailService {
	
	@Autowired
	DetailDao detailDao;
	
	public Map<String, Object> select(int pensionNo) {
		System.out.println("DetailService > select()");
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		Map<String, Object> pInfo = detailDao.select(pensionNo);
		Map<String, Object> totalReview = detailDao.totalReview(pensionNo);
		List<Map<String, Object>> imgList = detailDao.imgList(pensionNo);
		System.out.println(pInfo);
		System.out.println(imgList);
		pMap.put("pInfo", pInfo);
		pMap.put("imgList", imgList);
		pMap.put("totalReview", totalReview);
		return pMap;
	}
	
}
