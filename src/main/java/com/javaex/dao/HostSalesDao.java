package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostSalesVo;

@Repository
public class HostSalesDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<HostSalesVo> getList(int pensionNo){
		return sqlSession.selectList("HostSales.getList", pensionNo);
	}
	
}
