package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostSalesService;
import com.javaex.vo.HostSalesVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "host")
public class HostSalesController {
	
	@Autowired
	private HostSalesService sService;
	
	@RequestMapping(value="hostsales", method = {RequestMethod.GET, RequestMethod.POST})
	public String hostsale(HttpSession session, Model model) {
		
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int hostNo = uVo.getNo();
		int pensionNo = sService.getPensionNoBySession(hostNo);
		List<HostSalesVo> sList = sService.getList(pensionNo);
		model.addAttribute("sList", sList);
		
		return "/host/hostsales";
	}
	
	
}
