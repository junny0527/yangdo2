package com.javaex.api.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.HostReviewsService;
import com.javaex.vo.HostReplyVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "host")
public class HostReviewsApiController {
	
	@Autowired
	private HostReviewsService revService;
	
	@ResponseBody
	@RequestMapping(value = "api/replyInsert", method = {RequestMethod.GET, RequestMethod.POST})
	public int replyInsert(HttpSession session, @RequestBody HostReplyVo replyVo) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int hostNo = uVo.getNo();
		replyVo.setHostNo(hostNo);
		System.out.println("controller>");
		System.out.println(replyVo);
		System.out.println(replyVo.getReviewNo());
		System.out.println(replyVo.getHostContent());
		int count = revService.insertReply(replyVo);
		return count;
	}
	
	@ResponseBody
	@RequestMapping(value = "api/replyUpdate", method = {RequestMethod.GET, RequestMethod.POST})
	public int replyUpdate(HttpSession session, @RequestBody HostReplyVo replyVo) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int hostNo = uVo.getNo();
		replyVo.setHostNo(hostNo);
		System.out.println("controller>");
		System.out.println(replyVo);
		System.out.println(replyVo.getReviewNo());
		System.out.println(replyVo.getHostContent());
		int count = revService.updateReply(replyVo);
		return count;
	}
	
	
}
