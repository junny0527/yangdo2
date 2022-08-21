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
	
	public int getPensionNo(int userNo) {
		return hDao.getPensionNo(userNo);
	}
	
	public List<HostReservationVo> getList(int userNo){
		System.out.println("service");
		List<HostReservationVo> rList = hDao.getList(userNo);
		System.out.println(rList);
		return rList;
	}
	
	public HostReservationVo getReserve(Integer hostNo, String reserveid) {
		HostReservationVo hVo = new HostReservationVo();
		hVo.setHostNo(hostNo);
		hVo.setReservationNo(reserveid);
		return hDao.getReserve(hVo);
	}
	
	

}
