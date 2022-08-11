package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.RePayService;
import com.javaex.vo.RePayVo;
import com.javaex.vo.UserVo;

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
	@GetMapping("/yangdoreserve/{no}")
	public String yangdoreserve(@PathVariable int no, Model model, HttpSession session) {
		session.getAttribute("authUser");
		System.out.println("BumjunController>yangdoreserve()");
		
		Map<String, Object> rpMap = rePayService.getRePay(no);

		model.addAttribute("rpMap", rpMap);

		return "/pay/yangdoReserve";
	}
	
	@PostMapping("/reserve")
	@ResponseBody
	public int reInsert(@RequestBody RePayVo bean) {
		
		System.out.println("\t\t+ BumJunController::reInsert() invoked...");
		System.out.println("RePayVo::"+ bean);
		return rePayService.PayInsert(bean);
	}
	
	@PostMapping("/yangdoInsert")
	@ResponseBody
	public int yangdoPayUpdate(@RequestBody RePayVo bean) {
		System.out.println("\t\t+ BumJunController::yangdoPayUpdate() invoked...");
		System.out.println("RePayVo::"+ bean);
		return rePayService.yangdoUpdateInsert(bean);
		 
	}
	
	
	
}
