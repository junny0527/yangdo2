package com.javaex.controller;

import java.util.List;

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
	public String rules(HttpSession session) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		System.out.println(userNo);
		int pensionNo = iService.getPensionNoBySession(userNo);
		HostRulesVo oldRules = rService.getRules(pensionNo);
		System.out.println("oldRules : " + oldRules);
		if(oldRules != null) {
			return "redirect:/host/updaterules";
		}else {
			return "/host/rules";
		}
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
	
	@RequestMapping(value="updaterules", method= {RequestMethod.GET,RequestMethod.POST})
	public String updaterules(HttpSession session, Model model) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		System.out.println(userNo);
		int pensionNo = iService.getPensionNoBySession(userNo);
		
		HostRulesVo hVo = rService.getRules(pensionNo);
		List<HostRulesVo> peck = rService.getPeck(pensionNo);
		List<HostRulesVo> subpeck = rService.getsubPeck(pensionNo);
		
		model.addAttribute("hVo", hVo);
		model.addAttribute("peck", peck);
		model.addAttribute("subpeck", subpeck);
		
		return "/host/Updaterules";
	}
	
	
}
