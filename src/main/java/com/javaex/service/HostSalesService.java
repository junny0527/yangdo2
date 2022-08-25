package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostIntroduceDao;
import com.javaex.dao.HostSalesDao;
import com.javaex.vo.HostSalesVo;

@Service
public class HostSalesService {
	
	@Autowired
	private HostIntroduceDao iDao;
	
	@Autowired
	private HostSalesDao sDao;
	
	public int getPensionNoBySession(int userNo) {
		return iDao.getPensionNoBySession(userNo);
	}
	
	public List<HostSalesVo> getList(int pensionNo){
		return sDao.getList(pensionNo);
	}
	
}
