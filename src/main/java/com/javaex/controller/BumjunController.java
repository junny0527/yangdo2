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
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.PointsService;
import com.javaex.service.RePayService;
import com.javaex.vo.PointsVo;
import com.javaex.vo.RePayVo;

@Controller
@RequestMapping(value = "/res")
public class BumjunController {

	@Autowired
	private RePayService rePayService;
	private PointsService pointsService;
	
	// 예약
	@GetMapping("/reserve/{no}")
	public String reserve(@PathVariable int no, Model model, HttpSession session) {
		System.out.println("\t\t BumJunController::reserve() invoked...");
		
		System.out.println(no);
		
		session.getAttribute("authUser");
		
		Map<String, Object> rpMap = rePayService.getRePay(no);

		model.addAttribute("rpMap", rpMap);
		return "/pay/reserve";
	}

	 //양도예약
	@GetMapping("/yangdoreserve/{no}")
	public String yangdoreserve(@PathVariable int no, Model model, HttpSession session) {
		System.out.println("\t\t BumJunController::yangdoreserve() invoked...");
		
		
		session.getAttribute("authUser");
		Map<String, Object> rpMap = rePayService.getRePay(no);

		model.addAttribute("rpMap", rpMap);

		return "/pay/yangdoReserve";
	}
	
	//일반 결제 인서트
	@PostMapping("/reserve")
	@ResponseBody
	public void reInsert(@RequestBody RePayVo bean ,PointsVo pointsVo ) {
		System.out.println("\t\t BumJunController::reInsert() invoked...");
		System.out.println("RePayVo::"+ bean);
		pointsService.pointUpdate(pointsVo);
		rePayService.PayInsert(bean );
	}
	
	//양도 결제 인서트+업데이트
	@PostMapping("/yangdoUpdateInsert")
	@ResponseBody
	public void yangdoUpdateInsert(@RequestBody RePayVo bean ,PointsVo pointsVo ) {
		System.out.println("\t\t BumJunController::yangdoPayUpdate() invoked...");
		System.out.println("RePayVo::"+ bean);
		pointsService.pointUpdate(pointsVo);
		rePayService.yangdoUpdateInsert(bean);
		 
	}
	
	
	
}
