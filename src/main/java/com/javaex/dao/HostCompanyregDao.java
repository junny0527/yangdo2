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
		return sqlSession.insert("Hostcompanyreg.insertcompany", cVo);
	}
	
	public int insertBTArray(int insertBTArrays) {
		return sqlSession.insert("Hostcompanyreg.insertBTA", insertBTArrays);
	}
	
	public int insertBGArray(int insertBGArrays) {
		return sqlSession.insert("Hostcompanyreg.insertBGA", insertBGArrays);
	}
	
	
}
