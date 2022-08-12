package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostIntroduceVo;

@Repository
public class HostIntroduceDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insertPension(HostIntroduceVo iVo) {
		return sqlSession.insert("insertPension", iVo);
	}
	
	public int insertPublic(int value) {
		return sqlSession.insert("insertPublic", value);
	}
	
	public int insertAmenities(int value) {
		return sqlSession.insert("insertAmenities", value);
	}
	
	
}
