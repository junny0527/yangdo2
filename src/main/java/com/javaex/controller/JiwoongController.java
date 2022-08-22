package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.MainListService;
import com.javaex.vo.MainSearchVo;

@Controller
public class JiwoongController {
	
	@Autowired
	private MainListService mainService;
	
	
	
	//전체 리스트 (지역선택시)
	@RequestMapping(value="/main", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList(Model model ) {
		System.out.println("jiwoongController>mainList");
		
		Map<String, Object> pMap =  mainService.select();
		
		model.addAttribute("pMap",pMap);
		
		System.out.println("contorller"+pMap);
		
		return "/mainList/mainLists";
	}
	
	//검색시 체크박스 리스트
	@RequestMapping(value="main/search", method = {RequestMethod.POST, RequestMethod.GET})
	public String searchList(Model model, @ModelAttribute MainSearchVo searchVo,
			@RequestParam(value="pensionitem2") List<Integer> itemList
			) {
		System.out.println("Controller>search");
		System.out.println(searchVo);
		
		Map<String, Object> pMap = mainService.selectSearch(searchVo);
		
		model.addAttribute("pMap",pMap);
		
		System.out.println(pMap);
		/*
		List<MainSearchVo> searchList = mainService.selectSearch(searchVo);
		*/
		return "mainList/mainLists"; 
	}
	
	
}
