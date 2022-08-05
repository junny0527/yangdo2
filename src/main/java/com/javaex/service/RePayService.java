package com.javaex.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.RePayDao;

@Service
public class RePayService {
	@Autowired
	private RePayDao rePayDao;
	
	//
	public Map<String,Object> getRePay(int no){
		System.out.println("RePayService > getRePay()");
		
		Map<String,Object> rpMap = rePayDao.getRePay(no);
		
		return rpMap;
	}
}
