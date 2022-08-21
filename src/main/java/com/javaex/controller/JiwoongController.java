package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.MainListService;

@Controller
public class JiwoongController {
	
	@Autowired
	private MainListService mainService;
	
	/*
	@RequestMapping(value="/main", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList(Model model, @RequestParam("areaNo") int areaNo, HttpServletRequest request) {
		System.out.println("jiwoongController>mainList");
		System.out.println(areaNo);
		
		
		List<MainListVo> mainList = mainService.select(areaNo);
		System.out.println(mainList);
		
		//펜션 정보 
		model.addAttribute("mainList",mainList);
		
		
		return "/mainList/mainLists";
	}
	*/
	
	//전체 리스트
	@RequestMapping(value="/main", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList(Model model, @RequestParam("areaNo") int areaNo,
							@RequestParam(value= "datepicker", required = false)String datepicker,
							@RequestParam(value= "datepicker2", required = false)String datepicker2) {
		System.out.println("jiwoongController>mainList");
		System.out.println(areaNo);
		
		Map<String, Object> pMap =  mainService.select(areaNo, datepicker, datepicker2);
		
		model.addAttribute("pMap",pMap);
		System.out.println("contorller"+pMap);
		
		return "/mainList/mainLists";
	}
	
	
	
}
