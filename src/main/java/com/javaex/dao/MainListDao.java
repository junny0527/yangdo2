package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MainListVo;

@Repository
public class MainListDao {
	@Autowired
	private SqlSession sqlSession;
	
	// 펜션정보
	public List<MainListVo> select(int areaNo){
		System.out.println("mainDao>select");
		
		List<MainListVo> mainList =  sqlSession.selectList("MainList.penList", areaNo);
		System.out.println(mainList);
		
		return mainList;
	}
	
	//댓글 수
	public int selectTotalCnt() {
		System.out.println("mainDao>selectTotqalCnt");
		
		int totalCnt = sqlSession.selectOne("MainList.selectTotalCnt");
		
		return totalCnt;
		
	}
	
	//지역이름
	public Map<String, Object> selectArea(int areaNo){
		System.out.println("mainDao > Area");
		
		Map<String, Object> pMap = sqlSession.selectOne("MainList.selectArea");
		System.out.println();
		return pMap;
	}
	
}
