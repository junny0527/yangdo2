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
	
	
	
	//기본 리스트
	@RequestMapping(value="/main", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList(Model model, @RequestParam(value= "datepicker", defaultValue = "",required = false)String datepicker,
										@RequestParam(value= "datepicker2", defaultValue = "",required = false)String datepicker2) {
		System.out.println("jiwoongController>mainList");
		
		Map<String, Object> pMap =  mainService.select();
		
		model.addAttribute("pMap",pMap);
		model.addAttribute("datepicker",datepicker);
		model.addAttribute("datepicker2",datepicker2);
		
		System.out.println("contorller"+pMap);
		System.out.println("datepicker"+datepicker);
		System.out.println("datepicker2"+datepicker2);
		
		return "/mainList/mainLists";
	}
	
	//낮은가격 순 리스트
	@RequestMapping(value="/main/lowprice", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectLowprice(Model model) {
		System.out.println("Controller>lowprice");
		
		Map<String, Object> pMap = mainService.selectLowprice();
		
		model.addAttribute("pMap",pMap);
		System.out.println("hitController>lowList");
		
		return "/mainList/mainLists";
	}
	
	//높은가격 순 리스트
	@RequestMapping(value="/main/highprice", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectHighprice(Model model) {
		System.out.println("Controller>highprice");
		
		Map<String, Object> pMap = mainService.selectHighprice();
		
		model.addAttribute("pMap",pMap);
		System.out.println("Controller>highList");
		
		return "/mainList/mainLists";
		
	}
	
	//추천별 리스트
	@RequestMapping(value="/main/hit", method = {RequestMethod.GET, RequestMethod.POST})
	public String selectHit(Model model) {
		System.out.println("Controller>hitList");
		
		Map<String, Object> pMap = mainService.selectHit();
		
		model.addAttribute("pMap",pMap);
		
		return "/mainList/mainLists";
	}
	
	//검색시 체크박스 리스트
	@RequestMapping(value="main/search", method = {RequestMethod.POST, RequestMethod.GET})
	public String searchList(Model model, @ModelAttribute MainSearchVo searchVo,
								@RequestParam(value="pensionItem2") List<Integer> pensionItem2,
								@RequestParam(value="pensionItem1") List<Integer> pensionItem1) {
		System.out.println("Controller>search");
		System.out.println("searchVo"+searchVo);
		
		
		Map<String, Object> pMap = mainService.selectSearch(searchVo);
		
		model.addAttribute("pMap",pMap);
		
		System.out.println(pMap);
		/*
		List<MainSearchVo> searchList = mainService.selectSearch(searchVo);
		*/
		return "mainList/mainLists"; 
	}
	
	
}
