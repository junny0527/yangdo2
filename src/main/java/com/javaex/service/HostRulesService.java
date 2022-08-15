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
	
	public int updateRules(HostRulesVo hVo) {
		System.out.println("service: " + hVo);
		
		List<String> peakStartList = new ArrayList<String>();
		List<String> peakEndList = new ArrayList<String>();
		List<String> subpeakStartList = new ArrayList<String>();
		List<String> subpeakEndList = new ArrayList<String>();
		
		String[] editPeakStart = hVo.getPeakStart();
		String[] editPeakEnd = hVo.getPeakEnd();
		String[] editSubpeakStart = hVo.getSubpeakStart();
		String[] editSubpeakEnd = hVo.getSubpeakEnd();
		
		for(int i = 0; i<editPeakStart.length; i++) {
			if(i == 1) {
				i = i+1;
			}
			peakStartList.add(editPeakStart[i]);
		}
		
		for(int i = 0; i<editPeakEnd.length; i++) {
			if(i == 1) {
				i = i+1;
			}
			peakEndList.add(editPeakEnd[i]);
		}
		
		for(int i = 0; i<editSubpeakStart.length; i++) {
			if(i == 1) {
				i = i+1;
			}
			subpeakStartList.add(editSubpeakStart[i]);
		}
		
		for(int i = 0; i<editSubpeakEnd.length; i++) {
			if(i == 1) {
				i = i+1;
			}
			subpeakEndList.add(editSubpeakEnd[i]);
		}
		
		System.out.println(peakStartList);
		System.out.println(peakEndList);
		System.out.println(subpeakStartList);
		System.out.println(subpeakEndList);
		
		return rDao.updateRules(hVo);
	}

}
