package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.RePayService;
import com.javaex.vo.RePayVo;

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
	@GetMapping("/yangdoreserve")
	public String yangdoreserve(@RequestParam("no") int no, Model model) {
		
		System.out.println("BumjunController>yangdoreserve()");
		
		Map<String, Object> rpMap = rePayService.getRePay(no);

		model.addAttribute("rpMap", rpMap);

		return "/pay/yangdoReserve";
	}
	
	@PostMapping("/yangdoreserve")
	public Integer reInsert(RePayVo bean) {
		
		System.out.println("\t\t+ BumJunController::reInsert() invoked...");
		System.out.println("RePayVo::"+ bean);
		return null;
	}
	
	/*
	 * //예약 인서트
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/reserve", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public int reInsert(@ModelAttribute RePayVo rePayVo ) {
	 * System.out.println("BumjunController>reInsert()");
	 * System.out.println(rePayVo);
	 * 
	 * return rePayService.reInsert(rePayVo); } //양도 예약 업데이트 + 인서트 (순서: 업데이트 후 인서트)
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/yangdoreserve", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public int yangdoUpIn(@ModelAttribute RePayVo rePayVo )
	 * { System.out.println("BumjunController>yangdoUpIn()");
	 * System.out.println(rePayVo);
	 * 
	 * return rePayService.yangdoUpIn(rePayVo); }
	 */
	
}
