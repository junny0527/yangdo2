package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostIntroduceDao;
import com.javaex.dao.HostMainDao;
import com.javaex.vo.HostCountVo;
import com.javaex.vo.HostReservationVo;

@Service
public class HostMainService {
	
	@Autowired
	private HostMainDao mDao;
	
	@Autowired
	private HostIntroduceDao iDao;
	
	public int getPensionNoBySession(int hostNo) {
		return iDao.getPensionNoBySession(hostNo);
	}
	
	public List<HostReservationVo> getrevList(int pensionNo){
		System.out.println("service");
		List<HostReservationVo> rList = mDao.getrevList(pensionNo);
		System.out.println(rList);
		return rList;
	}
	
	public HostCountVo countElements(int pensionNo) {
		
		HostCountVo hVo = mDao.getDays();
		hVo.setPensionNo(pensionNo);
		System.out.println("setdays" + hVo);
		
		int countReviewsToday = mDao.countReviewsToday(pensionNo);
		int countReviewsWeek = mDao.countReviewsWeek(hVo);
		int countReviewsMonth = mDao.countReviewsMonth(hVo);
		
		int countSalesToday = mDao.countSalesToday(pensionNo);
		int countSalesWeek = mDao.countSalesWeek(hVo);
		int countSalesMonth = mDao.countSalesMonth(hVo);
		
		hVo.setReviewToday(countReviewsToday);
		hVo.setReviewWeek(countReviewsWeek);
		hVo.setReviewMonth(countReviewsMonth);
		
		hVo.setSaleToday(countSalesToday);
		hVo.setSaleWeek(countSalesWeek);
		hVo.setSaleMonth(countSalesMonth);
		
		System.out.println("service :" + hVo);
		
		return hVo;
	}
	
	
	
	
	
	
}
