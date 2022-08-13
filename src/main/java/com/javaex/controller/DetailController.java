package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
							  @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage,
							  @RequestParam(value= "datepicker", required = false)String datepicker,
							  @RequestParam(value= "datepicker2", required = false)String datepicker2) {
		System.out.println("DetailController > pMap");
		Map<String, Object> pMap = detailService.select(pensionNo, crtPage);
		System.out.println("datepicker:" + datepicker);
		System.out.println("datepicker2:" + datepicker2);
		model.addAttribute("pMap",pMap);
		model.addAttribute("crtPage", crtPage);

		
		return "detail/reservation";
	}
	
	@ResponseBody
	@RequestMapping(value="/api/reservation", method = {RequestMethod.GET, RequestMethod.POST})
	public List<Map<String, Object>> pMap(@RequestParam("pensionNo") int pensionNo, @RequestParam("roomNo") int roomNo) {
		System.out.println("ApiGuestbookController > list()");
		
		List<Map<String, Object>> roomMap = detailService.roomInfoList(pensionNo, roomNo);
		System.out.println("roomMap :"+roomMap);
		return roomMap;
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
