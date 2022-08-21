package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostReservationDao;
import com.javaex.vo.HostReservationVo;
import com.javaex.vo.PointsVo;

@Service
public class HostReservationService {
	
	@Autowired
	private HostReservationDao hDao;
	
	public int getPensionNo(int hostNo) {
		return hDao.getPensionNo(hostNo);
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
	
	public int givePoint(PointsVo pVo) {
		System.out.println("service" + pVo);
		return hDao.givePoint(pVo);
	}
	
	public int changestatusUsed(String reserveNum) {
		int reserveNo = Integer.parseInt(reserveNum);
		return hDao.changestatusUsed(reserveNo);
	}
	
	public int changestatusReserveCancel(String reserveNum) {
		int reserveNo = Integer.parseInt(reserveNum);
		return hDao.changestatusReserveCancel(reserveNo);
	}
	
	public int changestatusRoomCheckin(String reserveNum) {
		int reserveNo = Integer.parseInt(reserveNum);
		return hDao.changestatusRoomCheckin(reserveNo);
	}
	
	

}
