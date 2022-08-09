package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.DetailService;

@Controller
public class DetailController {
	
	@Autowired
	DetailService detailService;
	
	@RequestMapping(value="/reservation", method = {RequestMethod.GET, RequestMethod.POST})
	public String pensionList(@RequestParam("pensionNo") int pensionNo, Model model,
							  @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		System.out.println("DetailController > pMap");
		Map<String, Object> pMap = detailService.select(pensionNo, crtPage);
		
		model.addAttribute("pMap",pMap);
		
		model.addAttribute("totalReview", pMap.get("totalReview"));
		model.addAttribute("pInfo", pMap.get("pInfo"));
		model.addAttribute("imgList",pMap.get("imgList"));
		model.addAttribute("totalCnt",pMap.get("totalCnt"));
		model.addAttribute("crtPage", crtPage);
		model.addAttribute("pAmenList",pMap.get("pAmenList"));
		model.addAttribute("pPubList",pMap.get("pPubList"));
		model.addAttribute("roomList",pMap.get("roomList"));
		model.addAttribute("roomNo",pMap.get("roomNo"));
		System.out.println("pMap::"+pMap);
		return "detail/reservation";
	}
	
	
	
	@RequestMapping(value="/infomation", method = {RequestMethod.GET, RequestMethod.POST})
	public String test2() {
		System.out.println("test2");
		
		return "detail/infomation";
	}
	
	@RequestMapping(value="/review", method = {RequestMethod.GET, RequestMethod.POST})
	public String test3() {
		System.out.println("test3");
		
		return "detail/review";
	}
}
