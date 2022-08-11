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
	public String pMap(@RequestParam("pensionNo") int pensionNo, Model model,
					   @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		System.out.println("DetailController > pMap");
		Map<String, Object> pMap = detailService.select(pensionNo, crtPage);
		
		
		System.out.println("pmap :"+pMap);
		
		System.out.println("totalReview :" + pMap.get("totalReview"));
		System.out.println("imgList :" + pMap.get("imgList"));
		model.addAttribute("totalReview", pMap.get("totalReview"));
		model.addAttribute("pInfo", pMap.get("pInfo"));
		model.addAttribute("imgList", pMap.get("imgList"));
		model.addAttribute("pMap",pMap);
		model.addAttribute("boardList",pMap.get("boardList"));
		
		
		
		return "detail/reservation";
	}
	
	@ResponseBody
	@RequestMapping(value="/pensionImg", method = {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> pensionImg(@RequestParam("pensionNo") int pensionNo,
							 			  @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		System.out.println("DetailController > pensionImg");
		Map<String, Object> imgMap = detailService.pensionImg(pensionNo, crtPage);
		System.out.println("asdasdasdad"+ imgMap);
		
		
		return imgMap;
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
