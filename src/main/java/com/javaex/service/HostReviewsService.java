package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostIntroduceDao;
import com.javaex.dao.HostReviewsDao;
import com.javaex.vo.HostReplyVo;
import com.javaex.vo.HostReviewsVo;

@Service
public class HostReviewsService {
	
	@Autowired
	private HostReviewsDao revDao;
	
	@Autowired
	private HostIntroduceDao iDao;
	
	public int getPensionNo(int userNo) {
		System.out.println("service : " + userNo);
		return iDao.getPensionNoBySession(userNo);
	}
	
	public List<HostReviewsVo> getReviewsList(int pensionNo){
		return revDao.getReviewsList(pensionNo);
	}
	
	public int insertReply(HostReplyVo replyVo) {
		
		System.out.println("service");
		int count = revDao.insertReply(replyVo);
		
		return count;
	}
	
	public int updateReply(HostReplyVo replyVo) {
		
		System.out.println("service");
		int count = revDao.updateReply(replyVo);
		return count;
	}

}
