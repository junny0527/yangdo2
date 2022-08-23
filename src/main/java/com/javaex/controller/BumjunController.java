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
import org.springframework.web.bind.annotation.RequestParam;
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
	
//	@Autowired
//	private PointsDao dao;
	// 예약
	@GetMapping("/reserve")
	public String reserve(Model model, HttpSession session, @RequestParam Map<String, Object> params) {
		System.out.println("\t\t BumJunController::reserve() invoked...");
		
		System.out.println("no:"+ params);
		model.addAttribute("rpMap", params);

		
		//총합포인트 가져오기 
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		int userNo = userVo.getNo();
		Map<String, Object> gajidaPoints = pointsService.getpoints(userNo);
		System.out.println(gajidaPoints);
		
		model.addAttribute("gajidaPoints", gajidaPoints);
		
		System.out.println("==================================");
		System.out.println(params);
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
	public Map<String, Object> reInsert(@RequestBody RePayVo bean) {

		System.out.println("\t\t BumJunController::reInsert() invoked...");
		System.out.println("Controller RePayVo::" + bean);
		rePayService.PayInsert(bean);
		
		return rePayService.PayInsert(bean);
	}

	// 양도 결제 인서트+업데이트
	@PostMapping("/yangdoUpdateInsert")
	@ResponseBody
	public Map<String, Object> yangdoUpdateInsert(@RequestBody RePayVo bean) {
		System.out.println("\t\t BumJunController::yangdoPayUpdate() invoked...");
		System.out.println("RePayVo::" + bean);
		
		return rePayService.yangdoUpdateInsert(bean);

	}
	
	/* --------------------------------------------------------------------------------테스트------------------------------------------------------------ */
	/*
	 * @GetMapping("/testApi")
	 * 
	 * @ResponseBody public String test(Model model) throws JsonProcessingException
	 * { Map<String, Object> params = new HashMap<>(); Map<String, Object> params2 =
	 * new HashMap<>(); params.put("count", 1); params.put("num", 10);
	 * params2.put("data", params); ObjectMapper om = new ObjectMapper(); String
	 * personJson = om.writeValueAsString(params2);
	 * 
	 * return personJson; }
	 */
	
	
	
	/*
	 * @GetMapping("/test") public String test() {
	 * 
	 * return "/pay/test"; }
	 */
	
//	@PostMapping("/test")
//	public void test(RePayVo vo) {
//		vo.setPoint("500");
//		vo.setNo(1);
//		dao.pointsInsert(vo);
//	}

}
