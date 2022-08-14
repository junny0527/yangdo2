package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostIntroduceService;
import com.javaex.vo.HostIntroduceVo;

@Controller
@RequestMapping(value = "host")
public class HostIntroduceController {
	
	@Autowired
	private HostIntroduceService iService;
	
	@RequestMapping(value="introreg", method= {RequestMethod.GET, RequestMethod.POST})
	public String introreg() {
		return "/host/introduce";
	}
	
	@RequestMapping(value = "introsave", method= {RequestMethod.GET, RequestMethod.POST})
	public String introsave(@ModelAttribute HostIntroduceVo iVo) {
		System.out.println(iVo);
		iService.insertPension(iVo);
		return "redirect:/host/introreg";
	}
	
	@RequestMapping(value="introregopt", method= {RequestMethod.GET, RequestMethod.POST})
	public String introregopt(){
		return "/host/introduce2";
	}
	
	@RequestMapping(value="introoptsave", method= {RequestMethod.GET, RequestMethod.POST})
	public String introroptsave(@ModelAttribute HostIntroduceVo iVo){
		iService.updateOpt(iVo);
		return "redirect:/host/introregopt";
	}
	
	
}
