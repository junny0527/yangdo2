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
	
	@RequestMapping(value="/main2", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList(Model model, @RequestParam("penNo") int penNo) {
		System.out.println("jiwoongController>mainList");
		
		Map<String, Object> penMap = mainService.select(penNo);
		System.out.println(penMap);
		System.out.println(penNo);
		return "/mainList/mainLists";
	}
	
	@RequestMapping(value="/main", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList() {
		System.out.println("jiwoongController>mainList");
		
		return "/mainList/mainLists";
	}
	
}
