package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostIntroduceDao;
import com.javaex.vo.HostIntroduceVo;

@Service
public class HostIntroduceService {
	
	@Autowired
	private HostIntroduceDao iDao;
	
	public int insertPension(HostIntroduceVo iVo) {
		
		String editName = iVo.getLawName();
		String[] editArray = editName.split(" ");
		iVo.setLawName(editArray[1]);
		
		
		
		
		System.out.println("service : " + iVo);
		
		return iDao.insertPension(iVo);
	}
	
	
}
