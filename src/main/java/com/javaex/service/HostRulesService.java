package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostRulesDao;
import com.javaex.vo.HostRulesVo;

@Service
public class HostRulesService {
	
	@Autowired
	private HostRulesDao rDao;
	
	public int updateRules(HostRulesVo hVo) {
		return rDao.updateRules(hVo);
	}

}
