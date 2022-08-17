package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="host")
public class JaehwanController {
	
	@RequestMapping(value="hostjoin", method = {RequestMethod.GET, RequestMethod.POST})
	public String hostjoin() {
		return "/host/hJoinForm";
	}
	
	@RequestMapping(value="newhost", method = {RequestMethod.GET, RequestMethod.POST})
	public String newhost(HttpSession session) {
		int userNo = 5;
		session.setAttribute("userNo", userNo);
		return "/host/mainNoRegister";
	}
	
	@RequestMapping(value="logout", method = {RequestMethod.GET, RequestMethod.POST})
	public String logout(HttpSession session) {
		System.out.println("로그아웃");
		session.removeAttribute("authUser");
		session.invalidate();
		return "redirect:/host/newhost";
	}
	
	@RequestMapping(value="main", method= {RequestMethod.GET, RequestMethod.POST})
	public String main() {
		return "/host/mainRegister";
	}
	
	@RequestMapping(value="roomreg", method={RequestMethod.GET, RequestMethod.POST})
	public String roomreg() {
		return "/host/roomRegister";
	}
	
	@RequestMapping(value="reservemanage", method= {RequestMethod.GET, RequestMethod.POST})
	public String reservationManagement() {
		return "/host/reservationManagement";
	}
	
	@RequestMapping(value="reviews", method= {RequestMethod.GET, RequestMethod.POST})
	public String reviews() {
		return "/host/reviews";
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
