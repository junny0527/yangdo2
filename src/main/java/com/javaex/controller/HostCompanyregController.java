package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

	@RequestMapping(value="companysave", method = {RequestMethod.GET, RequestMethod.POST})
	public String companysave(@ModelAttribute HostCompanyregVo cVo,
							  @RequestParam("phone1") String phone1,
							  @RequestParam("phone2") String phone2,
							  @RequestParam("phone3") String phone3,
							  @RequestParam("tel1") String tel1,
							  @RequestParam("tel2") String tel2,
							  @RequestParam("tel3") String tel3
							  ) {
		
		cregService.insertCompany(cVo, phone1, phone2, phone3, tel1, tel2, tel3);

		return "redirect:/host/companyreg";
	}
	
	/*
	@RequestMapping(value="updatecompany", method = {RequestMethod.GET, RequestMethod.POST})
	public String updatecompany(Model model,
								@ModelAttribute HostCompanyregVo cVo,
			  					@RequestParam("phone1") String phone1,
	  							@RequestParam("phone2") String phone2,
	  							@RequestParam("phone3") String phone3,
	  							@RequestParam("tel1") String tel1,
	  							@RequestParam("tel2") String tel2
	  							@RequestParam("tel3") String tel3) {
		return "redirect:/host/UpdatecompanyRegister";
	}
	*/
}
