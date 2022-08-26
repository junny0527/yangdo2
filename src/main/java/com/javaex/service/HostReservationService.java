package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostIntroduceDao;
import com.javaex.dao.HostReservationDao;
import com.javaex.vo.HostReservationVo;
import com.javaex.vo.PointsVo;

@Service
public class HostReservationService {
	
	@Autowired
	private HostReservationDao hDao;
	
	@Autowired
	private HostIntroduceDao iDao;
	
	public int getPensionNo(int hostNo) {
		return iDao.getPensionNoBySession(hostNo);
	}
	
	public List<HostReservationVo> getList(int pensionNo){
		System.out.println("service");
		List<HostReservationVo> rList = hDao.getList(pensionNo);
		System.out.println(rList);
		return rList;
	}
	
	public HostReservationVo getReserve(int pensionNo, String reserveid) {
		HostReservationVo hVo = new HostReservationVo();
		hVo.setPensionNo(pensionNo);
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
