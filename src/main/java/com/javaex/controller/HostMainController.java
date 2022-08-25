package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostMainService;
import com.javaex.vo.HostCountVo;
import com.javaex.vo.HostReservationVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value="host")
public class HostMainController {
	
	@Autowired
	private HostMainService mService;
	
	@RequestMapping(value="newhost", method = {RequestMethod.GET, RequestMethod.POST})
	public String newhost() {
		return "/host/mainNoRegister";
	}
	
	@RequestMapping(value="logout", method = {RequestMethod.GET, RequestMethod.POST})
	public String logout(HttpSession session) {
		System.out.println("로그아웃");
		session.removeAttribute("authUser");
		session.invalidate();
		return "redirect:/loginForm";
	}
	
	@RequestMapping(value="main", method= {RequestMethod.GET, RequestMethod.POST})
	public String main(HttpSession session, Model model) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int hostNo = uVo.getNo();
		int pensionNo = mService.getPensionNoBySession(hostNo);
		List<HostReservationVo> rList = mService.getrevList(pensionNo);
		HostCountVo eleVo = mService.countElements(pensionNo);
		System.out.println("controller : " + rList);
		System.out.println("controller : " + eleVo);
		model.addAttribute("rList", rList);
		model.addAttribute("eleVo", eleVo);
		
		return "/host/mainRegister";
	}
	
	@RequestMapping(value="reservemanage", method= {RequestMethod.GET, RequestMethod.POST})
	public String reservationManagement() {
		return "/host/reservationManagement";
	}
	
	@RequestMapping(value="customerservice", method = {RequestMethod.GET, RequestMethod.POST})
	public String customerservice() {
		return "/host/customerService";
	}
	
	@RequestMapping(value="hostsales", method = {RequestMethod.GET, RequestMethod.POST})
	public String hostsale() {
		return "/host/hostsales";
	}
	
	
}
