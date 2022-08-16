package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.SaleService;
import com.javaex.vo.ReservationVo;

@Controller
public class SaleController {
	
	@Autowired
	private SaleService saleService;
	
	@RequestMapping(value="/sale", method = {RequestMethod.GET,RequestMethod.POST})
	public String sale(@RequestParam("no") int no,Model model) {
		System.out.println("SaleController > sale");
		System.out.println(no);
		Map<String,Object> sMap = saleService.getReservation(no);
		
		model.addAttribute("sMap", sMap);
		
		
		return "/sale/yangdo";
	}
	
	@RequestMapping(value="/sale/update", method = {RequestMethod.GET,RequestMethod.POST})
	public String yangdoUpdate(@ModelAttribute ReservationVo reservationVo){
		System.out.println("SaleApiController > yangdoUpdate");
		
		saleService.yangdoUpdate(reservationVo);
		
		
		return "redirect:/my/list/relist";
	}
}
