package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostReviewsService;
import com.javaex.vo.HostReviewsVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value="host")
public class HostReviewsController {
	
	@Autowired
	private HostReviewsService revService;
	
	@RequestMapping(value="reviews", method={RequestMethod.GET, RequestMethod.POST})
	public String reviews(HttpSession session, Model model) {
		
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		int pensionNo = revService.getPensionNo(userNo);
		
		List<HostReviewsVo> rList = revService.getReviewsList(pensionNo);
		model.addAttribute("rList", rList);
		System.out.println(rList);
		
		return "/host/reviews";
	}
	
	
}
