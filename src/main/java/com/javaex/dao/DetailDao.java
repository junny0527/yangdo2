package com.javaex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PensionImageVo;

@Repository
public class DetailDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public Map<String, Object> select(int pensionNo) {
		System.out.println("DetailDao > select()");
		Map<String, Object> pMap = sqlSession.selectOne("detail.select", pensionNo);
		return pMap;
	}
	
	public List<Map<String, Object>> imgList(int pensionNo) {
		System.out.println("DetailDao > imgList()");
		List<Map<String, Object>> imgList = sqlSession.selectList("detail.imgList", pensionNo);
		return imgList;
	}
	
	public Map<String, Object> totalReview(int pensionNo) {
		System.out.println("DetailDao > totalReview()");
		Map<String, Object> totalReview = sqlSession.selectOne("detail.totalReview", pensionNo);
		return totalReview;
	}
	
	
	
	
	//리스트(일반)
	public List<PensionImageVo> imgList(int pensionNo, int startRnum, int endRnum) {
		System.out.println("DetailDao > selectList4()");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startRnum", startRnum);
		map.put("endRnum", endRnum);
		map.put("pensionNo", pensionNo);
		List<PensionImageVo> imgList = sqlSession.selectList("detail.selectList", map);
		return imgList;
	}
	
	//전체글 개수
		public int selectTotalCnt(int pensionNo) {
			System.out.println("DetailDao > selectTotalCnt()");
			
			int totalCnt = sqlSession.selectOne("detail.selectTotalCnt", pensionNo);
			
			return totalCnt;
		}
	
	
}
