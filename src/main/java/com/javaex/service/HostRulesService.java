package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostRulesDao;
import com.javaex.vo.HostRulesVo;

@Service
public class HostRulesService {
	
	@Autowired
	private HostRulesDao rDao;
	
	public int getPensionNoBySession(int userNo) {
		return rDao.getPensionNoBySession(userNo);
	}
	
	public int updateRules(HostRulesVo hVo) {
		System.out.println("service: " + hVo);
		
		HostRulesVo peckVo = new HostRulesVo();
		peckVo.setPensionNo(hVo.getPensionNo());
		String[] editpeckStart = hVo.getPeckStartArray();
		String[] editpeckEnd = hVo.getPeckEndArray();
		String[] editSubpeckStart = hVo.getSubpeckStartArray();
		String[] editSubpeckEnd = hVo.getSubpeckEndArray();
		
		for(int i = 0; i<editpeckStart.length; i++) {
			if(i == 1) {
				i = i+1;
			}
			String ps = editpeckStart[i];
			String pe = editpeckEnd[i];
			
			String newPs = ps.replace("월 ", "-");
			newPs = newPs.replace("일", "");
			String newPe = pe.replace("일", "");
			newPe = newPe.replace("월 ", "-");
			
			peckVo.setPeckStart(newPs);
			peckVo.setPeckEnd(newPe);
			
			System.out.println("peck : " + peckVo);
			System.out.println("peckStart : " + peckVo.getPeckStart());
			System.out.println("peckEnd : " + peckVo.getPeckEnd());
			rDao.insertPeck(peckVo);
			
			System.out.println("insertPeck Ok");
			
			int peckNo = rDao.getpeckNo();
			System.out.println("peckNo : " + peckNo);
			peckVo.setPeckNo(peckNo);
			System.out.println("after insert peckVo : " + peckVo);
			rDao.insertPensionPeck(peckVo);
		}
		
		for(int i = 0; i<editSubpeckStart.length; i++) {
			if(i == 1) {
				i = i+1;
			}
			String subPs = editSubpeckStart[i];
			String subPe = editSubpeckEnd[i];
			
			String subNewPs = subPs.replace("월 ", "-");
			subNewPs = subNewPs.replace("일", "");
			String subNewPe = subPe.replace("일", "");
			subNewPe = subNewPe.replace("월 ", "-");
			
			peckVo.setSubpeckStart(subNewPs);
			peckVo.setSubpeckEnd(subNewPe);
			
			System.out.println("subpeck : " + peckVo);
			
			rDao.insertsubPeck(peckVo);
			
			int peckNo = rDao.getpeckNo();
			peckVo.setPeckNo(peckNo);
			rDao.insertPensionPeck(peckVo);
		}
		return rDao.updateRules(hVo);
	}

}
