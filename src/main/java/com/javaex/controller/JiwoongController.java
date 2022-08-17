package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.MainListService;
import com.javaex.vo.MainListVo;

@Controller
public class JiwoongController {
	
	@Autowired
	private MainListService mainService;
	
	
	@RequestMapping(value="/main", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList(Model model, @RequestParam("areaNo") int areaNo) {
		System.out.println("jiwoongController>mainList");
		System.out.println(areaNo);
		
		
		List<MainListVo> mainList = mainService.select(areaNo);
		System.out.println(mainList);
		
		//펜션 정보 
		model.addAttribute("mainList",mainList);
		
		
		return "/mainList/mainLists";
	}
	
	
	/*
	@RequestMapping(value="/main", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList(Model model, @RequestParam("areaNo") int areaNo) {
		System.out.println("jiwoongController>mainList");
		System.out.println(areaNo);
		
		Map<String, Object> pMap =  mainService.select(areaNo);
		System.out.println(pMap);
		
		model.addAttribute(pMap);
		
		return "/mainList/mainLists";
	}
	
	*/
	
}
