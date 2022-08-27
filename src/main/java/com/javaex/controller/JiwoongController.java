package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.MainListService;
import com.javaex.vo.MainListVo;
import com.javaex.vo.MainSearchVo;

@Controller
public class JiwoongController {
	
	@Autowired
	private MainListService mainService;
	
	
	
	//기본 리스트
	@RequestMapping(value="/main", method={RequestMethod.GET, RequestMethod.POST})
	public String mainList(Model model, @ModelAttribute MainSearchVo searchVo) {
		System.out.println("jiwoongController>mainList");
		System.out.println(searchVo);
		
		List<MainSearchVo> pList = mainService.main(searchVo);
		
		String datePicker = searchVo.getDatepicker();
		String datePicker2 = searchVo.getDatepicker2();
		
		model.addAttribute("datePicker",datePicker);
		model.addAttribute("datePicker2",datePicker2);
		model.addAttribute("pList",pList);
		
		
		System.out.println("datePicker:"+datePicker);
		System.out.println("datePicker2:"+datePicker2);
		System.out.println("contorller"+pList);
		
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
	
	
	
	//검색
	@RequestMapping(value="main/search", method = {RequestMethod.POST, RequestMethod.GET})
	public String searchList(Model model, @ModelAttribute MainSearchVo searchVo) {
		System.out.println("Controller>search");
		System.out.println("searchVo"+searchVo);
		
		List<MainListVo> pList = mainService.selectSearch(searchVo);
		
		model.addAttribute("pList",pList);
		String datePicker = searchVo.getDatepicker();
		String datePicker2 = searchVo.getDatepicker2();
		
		model.addAttribute("datePicker",datePicker);
		model.addAttribute("datePicker2",datePicker2);
		
		System.out.println("ControllerSearch"+pList);
		
		return "mainList/mainLists"; 
	}
	
	
}
