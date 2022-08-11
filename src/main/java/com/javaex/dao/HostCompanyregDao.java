package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostCompanyregVo;

@Repository
public class HostCompanyregDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public HostCompanyregVo getEmail(String id){
		return sqlSession.selectOne("Hostcompanyreg.email", id);
	}
	
	public int insertCompany(HostCompanyregVo cVo) {
		sqlSession.insert("Hostcompanyreg.insertcompany", cVo);
		return sqlSession.insert("Hostcompanyreg.insertcompany", cVo);
	}
	
	
}
