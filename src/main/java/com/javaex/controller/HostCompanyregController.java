package com.javaex.controller;

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
	public String companyreg(Model model, String id) {
		id = "bb";
		String email = cregService.getEmail(id);
		HostCompanyregVo cVo = new HostCompanyregVo();
		cVo.setEmail(email);
		model.addAttribute("cVo", cVo);
		return "/host/companyRegister";
	}
	/*
	@RequestMapping(value="companysave", method = {RequestMethod.GET, RequestMethod.POST})
	public String companysave(@ModelAttribute HostCompanyregVo companyregVo,
							  @ModelAttribute ) {
		return "redirect:/host/UpdatecompanyRegister";
	}
	*/
}
