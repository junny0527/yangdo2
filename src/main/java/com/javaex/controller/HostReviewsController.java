package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostReviewsService;
import com.javaex.vo.HostReviewsVo;

@Controller
@RequestMapping(value="host")
public class HostReviewsController {
	
	@Autowired
	private HostReviewsService revService;
	
	@RequestMapping(value="reviews", method={RequestMethod.GET, RequestMethod.POST})
	public String reviews(Model model) {
		
		int userNo = 3;
		int pensionNo = revService.getPensionNo(userNo);
		
		List<HostReviewsVo> rList = revService.getReviewsList(pensionNo);
		model.addAttribute("rList", rList);
		System.out.println(rList);
		
		return "/host/reviews";
	}
	
	
}
