package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="host")
public class JaehwanController {
	
	@RequestMapping(value="mypagereg", method = {RequestMethod.GET, RequestMethod.POST})
	public String mypage() {
		return "/mypageRegister";
	}
	
	@RequestMapping(value="newhost", method = {RequestMethod.GET, RequestMethod.POST})
	public String newhost() {
		return "/main(noRegister)";
	}
	
	@RequestMapping(value="main", method= {RequestMethod.GET, RequestMethod.POST})
	public String main() {
		return "/main(register)";
	}
	
	@RequestMapping(value="introreg", method= {RequestMethod.GET, RequestMethod.POST})
	public String introreg() {
		return "/introduce";
	}
	
	@RequestMapping(value="introregopt", method= {RequestMethod.GET, RequestMethod.POST})
	public String introregopt(){
		return "/introduce2";
	}
	
	@RequestMapping(value="rules", method= {RequestMethod.GET, RequestMethod.POST})
	public String rules() {
		return "/rules";
	}
	
	@RequestMapping(value="roomreg", method={RequestMethod.GET, RequestMethod.POST})
	public String roomreg() {
		return "/roomRegister";
	}
	
	@RequestMapping(value="reservemanage", method= {RequestMethod.GET, RequestMethod.POST})
	public String reservationManagement() {
		return "/reservationManagement";
	}
}
