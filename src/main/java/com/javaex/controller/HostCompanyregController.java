package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostCompanyregService;
import com.javaex.vo.HostCompanyregVo;

@Controller
@RequestMapping(value = "host")
public class HostCompanyregController {
	
	@Autowired
	private HostCompanyregService cregService;
	
	@RequestMapping(value="companyreg", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyreg(HttpSession session, Model model, String id) {
		
		int userNo = (Integer) session.getAttribute("userNo");
		System.out.println(userNo);
		HostCompanyregVo cVo = new HostCompanyregVo();
		String email = cregService.getEmail(userNo);
		cVo.setEmail(email);
		model.addAttribute("cVo", cVo);
		return "/host/companyRegister";
	}

	@RequestMapping(value="companysave", method = {RequestMethod.GET, RequestMethod.POST})
	public String companysave(HttpSession session, @ModelAttribute HostCompanyregVo cVo) {
		int userNo = (Integer) session.getAttribute("userNo");
		cVo.setUserNo(userNo);
		cregService.insertCompany(cVo);
		return "/host/introduce";
	}
	/*
	@RequestMapping(value="updatecompany", method = {RequestMethod.GET, RequestMethod.POST})
	public String updatecompany(Model model, String id) {
		
		id = "bb";
		String email = cregService.getEmail(id);
		HostCompanyregVo cVo = new HostCompanyregVo();
		cVo.setEmail(email);
		model.addAttribute("cVo", cVo);
		return "/host/UpdatecompanyRegister";
	}
	
	@RequestMapping(value="updatesave", method = {RequestMethod.GET, RequestMethod.POST})
	public String updatesave(@ModelAttribute HostCompanyregVo cVo) {
		return "redirect:/host/updatecompany";
	}
	*/
	
}
