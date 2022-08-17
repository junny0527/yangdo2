package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostIntroduceVo;

@Repository
public class HostIntroduceDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int getCompanyNo(int userNo) {
		return sqlSession.selectOne("HostIntroduce.getCompanyNo", userNo);
	}
	
	public int insertPension(HostIntroduceVo iVo) {
		return sqlSession.insert("HostIntroduce.insertPension", iVo);
	}
	
	public int insertPublic(HostIntroduceVo arrayVo) {
		return sqlSession.insert("HostIntroduce.insertPublic", arrayVo);
	}
	
	public int insertAmenities(HostIntroduceVo arrayVo) {
		return sqlSession.insert("HostIntroduce.insertAmenities", arrayVo);
	}
	
	public int insertsido(HostIntroduceVo iVo) {
		return sqlSession.insert("HostIntroduce.insertsido", iVo);
	}
	
	public int insertgugun(HostIntroduceVo iVo) {
		return sqlSession.insert("HostIntroduce.insertgugun", iVo);
	}
	
	public int updateOpt(HostIntroduceVo iVo) {
		return sqlSession.update("HostIntroduce.updateOpt", iVo);
	}
	
	public int getPensionNo() {
		return sqlSession.selectOne("HostIntroduce.getPensionNo");
	}
	
	public int getPensionNoBySession(int userNo) {
		return sqlSession.selectOne("HostIntroduce.getPensionNoBySession", userNo);
	}
	
}
