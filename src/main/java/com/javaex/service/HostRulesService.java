package com.javaex.service;

import java.util.ArrayList;
import java.util.List;

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
		}
		return rDao.updateRules(hVo);
	}
	
	public HostRulesVo getRules(int pensionNo) {
		return rDao.getRules(pensionNo);
	}
	
	public List<HostRulesVo> getPeck(int pensionNo){
		List<HostRulesVo> pVo = rDao.getPeck(pensionNo);
		System.out.println(pVo);
		List<HostRulesVo> newpVo = new ArrayList<>();
		System.out.println("service : " + pVo);
			
		for(int i=0; i<pVo.size(); i++) {
			String newStart = pVo.get(i).getPeckStart();
			String newEnd = pVo.get(i).getPeckEnd();
			String day = "일";
			
			String newPs = newStart.replace("-", "월 ");
			newPs = newPs.concat(day);
			String newPe = newEnd.replace("-", "월 ");
			newPe = newPe.concat(day);
			
			HostRulesVo tempVo = new HostRulesVo();
			tempVo.setPeckStart(newPs);
			tempVo.setPeckEnd(newPe);
			
			newpVo.add(tempVo);
		}
		System.out.println("service : " + newpVo);
		return newpVo;
	}
	
	public List<HostRulesVo> getsubPeck(int pensionNo){
		List<HostRulesVo> spVo = rDao.getsubPeck(pensionNo);
		List<HostRulesVo> newspVo = new ArrayList<>();
		System.out.println("service : " + spVo);
		
		for(int i=0; i<spVo.size(); i++) {
			String newStart = spVo.get(i).getSubpeckStart();
			String newEnd = spVo.get(i).getSubpeckEnd();
			String day = "일";
			
			String newPs = newStart.replace("-", "월 ");
			newPs = newPs.concat(day);
			String newPe = newEnd.replace("-", "월 ");
			newPe = newPe.concat(day);
			
			HostRulesVo tempVo = new HostRulesVo();
			tempVo.setSubpeckStart(newPs);
			tempVo.setSubpeckEnd(newPe);
			
			newspVo.add(tempVo);
		}
		System.out.println("service : " + newspVo);
		return newspVo;
	}

}
