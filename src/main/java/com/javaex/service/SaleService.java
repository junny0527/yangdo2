package com.javaex.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.SaleDao;

@Service
public class SaleService {

	@Autowired
	private SaleDao saleDao;
	
	public Map<String,Object> getReservation(int no){
		System.out.println("SaleService > getReservation()");
		
		Map<String,Object> sMap = saleDao.getReservation(no);
		
		return sMap;
	}
}
