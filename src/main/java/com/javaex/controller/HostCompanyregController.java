package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostCompanyregService;
import com.javaex.vo.HostCompanyregVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "host")
public class HostCompanyregController {
	
	@Autowired
	private HostCompanyregService cregService;
	
	@RequestMapping(value="companyreg", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyreg(HttpSession session, Model model, String id) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		System.out.println(userNo);
		HostCompanyregVo cVo = new HostCompanyregVo();
		String email = cregService.getEmail(userNo);
		cVo.setEmail(email);
		model.addAttribute("cVo", cVo);
		
		int companyNo = cregService.getCompanyNoBySession(userNo);
		
		if(companyNo != 0) {
			return "redirect:/host/updatecompanyreg";
		}else {
			return "/host/companyRegister";
		}
		
	}

	@RequestMapping(value="companysave", method = {RequestMethod.GET, RequestMethod.POST})
	public String companysave(HttpSession session, @ModelAttribute HostCompanyregVo cVo) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		cVo.setUserNo(userNo);
		cregService.insertCompany(cVo);
		return "/host/introduce";
	}
	
	@RequestMapping(value="updatecompanyreg", method = {RequestMethod.GET, RequestMethod.POST})
	public String updatecompanyreg(HttpSession session, Model model, @ModelAttribute HostCompanyregVo cVo) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		String email = cregService.getEmail(userNo);
		Map<String, Object> cMap = cregService.getCompanyinfo(userNo, email);
		model.addAttribute("cMap", cMap);
		
		return "/host/UpdatecompanyRegister";
	}
	
	
	@RequestMapping(value="updatesave", method = {RequestMethod.GET, RequestMethod.POST})
	public String updatesave(@ModelAttribute HostCompanyregVo cVo) {
		return "redirect:/host/updatecompany";
	}
}
