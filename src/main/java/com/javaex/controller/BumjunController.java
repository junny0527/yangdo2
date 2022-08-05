package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.RePayService;

@Controller
@RequestMapping(value = "/res")
public class BumjunController {

	@Autowired
	private RePayService rePayService;

	// 예약
	@RequestMapping(value = "/reserve", method = { RequestMethod.GET, RequestMethod.POST })
	public String reserve(@RequestParam("no") int no, Model model) {
		System.out.println("BumjunController>reserve()");
		System.out.println(no);
		
		Map<String, Object> rpMap = rePayService.getRePay(no);

		model.addAttribute("rpMap", rpMap);
		return "/pay/reserve";
	}

//양도예약
	@RequestMapping(value = "/yangdoreserve", method = { RequestMethod.GET, RequestMethod.POST })
	public String yangdoreserve(@RequestParam("no") int no, Model model) {
		System.out.println("BumjunController>yangdoreserve()");
		System.out.println(no);
		
		Map<String, Object> rpMap = rePayService.getRePay(no);

		model.addAttribute("rpMap", rpMap);

		return "/pay/yangdoReserve";
	}
}
