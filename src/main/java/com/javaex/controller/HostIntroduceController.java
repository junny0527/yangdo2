package com.javaex.controller;

import javax.servlet.http.HttpSession;

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
	public String introsave(HttpSession session, @ModelAttribute HostIntroduceVo iVo) {
		int userNo = (Integer) session.getAttribute("userNo");
		System.out.println("session: " + userNo);
		int companyNo = iService.getCompanyNo(userNo);
		iVo.setCompanyNo(companyNo);
		System.out.println(iVo);
		iService.insertPension(iVo);
		return "host/introduce2";
	}
	
	@RequestMapping(value="introregopt", method= {RequestMethod.GET, RequestMethod.POST})
	public String introregopt(){
		return "/host/introduce2";
	}
	
	@RequestMapping(value="introoptsave", method= {RequestMethod.GET, RequestMethod.POST})
	public String introroptsave(HttpSession session, @ModelAttribute HostIntroduceVo iVo){
		int userNo = (Integer) session.getAttribute("userNo");
		System.out.println(userNo);
		int pensionNo = iService.getPensionNoBySession(userNo);
		System.out.println("pensionNo : " + pensionNo);
		iVo.setPensionNo(pensionNo);
		iService.updateOpt(iVo);
		return "/host/rules";
	}
	
	
}
