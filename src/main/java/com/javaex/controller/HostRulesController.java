package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostIntroduceService;
import com.javaex.service.HostRulesService;
import com.javaex.vo.HostRulesVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value="host")
public class HostRulesController {
	
	@Autowired
	private HostRulesService rService;
	
	@Autowired
	private HostIntroduceService iService;
	
	@RequestMapping(value="rules", method= {RequestMethod.GET, RequestMethod.POST})
	public String rules(HttpSession session, Model model) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		int pensionNo = iService.getPensionNoBySession(userNo);
		HostRulesVo rInfo = rService.getRules(pensionNo);
		//List<HostRulesVo> peck = rService.getPeck(pensionNo);
		//List<HostRulesVo> subpeck = rService.getsubPeck(pensionNo);
		
		model.addAttribute("rInfo", rInfo);
		//model.addAttribute("peck", peck);
		//model.addAttribute("subpeck", subpeck);
		
		return "/host/rules";
	}
	
	@RequestMapping(value="rulessave", method = {RequestMethod.GET, RequestMethod.POST})
	public String rulessave(HttpSession session, @ModelAttribute HostRulesVo hVo) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		System.out.println(userNo);
		int pensionNo = iService.getPensionNoBySession(userNo);
		System.out.println("pensionNo : " + pensionNo);
		hVo.setPensionNo(pensionNo);
		rService.updateRules(hVo);
		return "/host/roomRegister";
	}
		
	
	
}
