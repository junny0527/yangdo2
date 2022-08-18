package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostReservationDao;
import com.javaex.vo.HostReservationVo;

@Service
public class HostReservationService {
	
	@Autowired
	private HostReservationDao hDao;
	
	public List<HostReservationVo> getList(int userNo){
		List<HostReservationVo> rList = hDao.getList(userNo);
		System.out.println(rList);
		return rList;
	}
	
	

}
