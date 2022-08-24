package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.HostReviewsService;
import com.javaex.vo.HostReplyVo;

@Controller
@RequestMapping(value = "host")
public class HostReviewsApiController {
	
	@Autowired
	private HostReviewsService revService;
	
	@ResponseBody
	@RequestMapping(value = "api/replyInsert", method = {RequestMethod.GET, RequestMethod.POST})
	public int replyInsert(@RequestBody HostReplyVo replyVo) {
		replyVo.setHostNo(3);
		System.out.println("controller>");
		System.out.println(replyVo);
		System.out.println(replyVo.getReviewNo());
		System.out.println(replyVo.getHostContent());
		int count = revService.insertReply(replyVo);
		
		return count;
	}
	
	
	
	
	
	
	
	
}
