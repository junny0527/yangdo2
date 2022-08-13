package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="host")
public class JaehwanController {
	@RequestMapping(value="newhost", method = {RequestMethod.GET, RequestMethod.POST})
	public String newhost() {
		return "/host/mainNoRegister";
	}
	
	@RequestMapping(value="main", method= {RequestMethod.GET, RequestMethod.POST})
	public String main() {
		return "/host/mainRegister";
	}
	
	@RequestMapping(value="rules", method= {RequestMethod.GET, RequestMethod.POST})
	public String rules() {
		return "/host/rules";
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
	
	@RequestMapping(value="hostjoin", method = {RequestMethod.GET, RequestMethod.POST})
	public String hostjoin() {
		return "/host/hostJoinForm";
	}
}
