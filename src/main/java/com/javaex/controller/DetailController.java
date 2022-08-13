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
	
	//예약 사이트
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
		model.addAttribute("datepicker", datepicker);
		model.addAttribute("datepicker2", datepicker2);

		
		return "detail/reservation";
	}
	
	//객실 정보 가져오기 (ajax)
	@ResponseBody
	@RequestMapping(value="/api/reservation", method = {RequestMethod.GET, RequestMethod.POST})
	public List<Map<String, Object>> pMap(@RequestParam("pensionNo") int pensionNo, @RequestParam("roomNo") int roomNo) {
		System.out.println("ApiGuestbookController > pMap()");
		
		List<Map<String, Object>> roomMap = detailService.roomInfoList(pensionNo, roomNo);
		System.out.println("roomMap :"+roomMap);
		return roomMap;
	}
	
	//펜션 숙소정보 가져오기 (ajax)
	@ResponseBody
	@RequestMapping(value="/api/infomation", method = {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> infomation(@RequestParam("pensionNo") int pensionNo) {
		System.out.println("ApiGuestbookController > infomation()");
		
		Map<String, Object> iMap = detailService.pensionInfo(pensionNo);
		System.out.println("iMap:"+iMap);
		
		return iMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/api/review", method = {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> review(@RequestParam("pensionNo") int pensionNo) {
		System.out.println("ApiGuestbookController > review()");
		
		Map<String, Object> rMap = detailService.reviewInfo(pensionNo);
		System.out.println("rMap:"+rMap);
		
		return rMap;
	}
}
