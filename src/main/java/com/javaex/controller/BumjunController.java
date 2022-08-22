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
//import com.javaex.vo.PointsVo;
import com.javaex.vo.RePayVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "/res")
public class BumjunController {

	@Autowired
	private RePayService rePayService;

	@Autowired
	private PointsService pointsService;

	// 예약
	@GetMapping("/reserve/{no}")
	public String reserve(@PathVariable int no, Model model, HttpSession session) {
		System.out.println("\t\t BumJunController::reserve() invoked...");

		System.out.println("no:"+no);
		Map<String, Object> rpMap = rePayService.getRePay(no);
		
		model.addAttribute("rpMap", rpMap);
		
		//총합포인트 가져오기 
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		int userNo = userVo.getNo();
		Map<String, Object> gajidaPoints = pointsService.getpoints(userNo);
		System.out.println(gajidaPoints);
		
		model.addAttribute("gajidaPoints", gajidaPoints);
		
		System.out.println("==================================");
		System.out.println(rpMap);
		System.out.println("==================================");
		
		return "/pay/reserve";
	}

	// 양도예약
	@GetMapping("/yangdoreserve/{no}")
	public String yangdoreserve(@PathVariable int no, Model model, HttpSession session) {
		System.out.println("\t\t BumJunController::yangdoreserve() invoked...");

		
		Map<String, Object> rpMap = rePayService.getyangdoRePay(no);

		model.addAttribute("rpMap", rpMap);
		
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		int userNo = userVo.getNo();
		Map<String, Object> gajidaPoints = pointsService.getpoints(userNo);
		System.out.println(gajidaPoints);
		
		model.addAttribute("gajidaPoints", gajidaPoints);

		return "/pay/yangdoReserve";
	}

	// 일반 결제 인서트
	@PostMapping("/repay")
	@ResponseBody
	public int reInsert(@RequestBody RePayVo bean) {

		System.out.println("\t\t BumJunController::reInsert() invoked...");
		System.out.println("Controller RePayVo::" + bean);
//		System.out.println("Controller pointsVo::"+ pointsVo);
		
		return rePayService.PayInsert(bean);
	}

	// 양도 결제 인서트+업데이트
	@PostMapping("/yangdoUpdateInsert")
	@ResponseBody
	public int yangdoUpdateInsert(@RequestBody RePayVo bean) {
		System.out.println("\t\t BumJunController::yangdoPayUpdate() invoked...");
		System.out.println("RePayVo::" + bean);

		return rePayService.yangdoUpdateInsert(bean);

	}

}
