package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostRulesVo;

@Repository
public class HostRulesDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int updateRules(HostRulesVo hVo) {
		return sqlSession.update("HostRules.updateRules", hVo);
	}
	
	
}
