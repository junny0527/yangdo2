package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostRulesService;
import com.javaex.vo.HostRulesVo;

@Controller
@RequestMapping(value="host")
public class HostRulesController {
	
	@Autowired
	private HostRulesService rService;
	
	@RequestMapping(value="rules", method= {RequestMethod.GET, RequestMethod.POST})
	public String rules() {
		return "/host/rules";
	}
	
	@RequestMapping(value="rulessave", method = {RequestMethod.GET, RequestMethod.POST})
	public String rulessave(@ModelAttribute HostRulesVo hVo) {
		rService.updateRules(hVo);
		return "redirect:/host/rules";
	}
		
	
	
}
