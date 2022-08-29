package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostCompanyregVo;

@Repository
public class HostCompanyregDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public String getEmail(int userNo){
		return sqlSession.selectOne("HostCompanyreg.email", userNo);
	}
	
	public int insertCompany(HostCompanyregVo cVo) {
		return sqlSession.insert("HostCompanyreg.insertcompany", cVo);
	}
	
	public int insertcompanyTaxInvoice(HostCompanyregVo cVo) {
		return sqlSession.insert("HostCompanyreg.insertcompanyTaxInvoice", cVo);
	}
	
	public int getCompanyNo() {
		return sqlSession.selectOne("HostCompanyreg.getCompanyNo");
	}
	
	public int getCompanyNoBySession(int userNo) {
		return sqlSession.selectOne("HostCompanyreg.getCompanyNoBySession", userNo);
	}
	
	public int insertBTArray(HostCompanyregVo newVo) {
		return sqlSession.insert("HostCompanyreg.insertBTA", newVo);
	}
	
	public int insertBGArray(HostCompanyregVo newVo) {
		return sqlSession.insert("HostCompanyreg.insertBGA", newVo);
	}
	
	public HostCompanyregVo getCompanyinfo(int userNo) {
		return sqlSession.selectOne("HostCompanyreg.getCompanyinfo", userNo);
	}
	
	public List<HostCompanyregVo> getBusinesstype(int companyNo) {
		return sqlSession.selectList("HostCompanyreg.getBusinesstype", companyNo);
	}
	
	public List<HostCompanyregVo> getBusinessgroup(int companyNo) {
		return sqlSession.selectList("HostCompanyreg.getBusinessgroup", companyNo);
	}
	
	
}
