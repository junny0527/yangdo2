package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.MainListService;

@Controller
public class JiwoongController {
	
	@Autowired
	private MainListService mainService;
	
	@RequestMapping(value="/main", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList(Model model, @RequestParam("areaNo") int areaNo,
										@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		System.out.println("jiwoongController>mainList");
		System.out.println(areaNo);
		Map<String, Object> penMapList = mainService.select(areaNo);
		
		System.out.println(penMapList);
		
		//펜션 정보 
		model.addAttribute("penMapList",penMapList);
		
		//사진 가져오기
		
		
		return "/mainList/mainLists";
	}
	
	
	
}
