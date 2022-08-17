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
	
	public int insertPeck(HostRulesVo peckVo) {
		return sqlSession.insert("HostRules.insertpeck", peckVo);
	}
	
	public int insertsubPeck(HostRulesVo peckVo) {
		return sqlSession.insert("HostRules.insertsubpeck", peckVo);
	}
	
	public int getPensionNoBySession(int userNo) {
		int pensionNo = sqlSession.selectOne("HostRules.getPensionNoBySession", userNo);
		return pensionNo;
	}
	
	public int getpeckNo() {
		int peckNo = sqlSession.selectOne("HostRules.getpeckNo");
		return peckNo;
	}
	
	public int insertPensionPeck(HostRulesVo peckVo) {
		return sqlSession.insert("HostRules.insertPensionPeck", peckVo);
	}
	
}
