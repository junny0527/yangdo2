package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

	@RequestMapping(value="/login", method= {RequestMethod.GET,RequestMethod.POST})
	public String login() {
		System.out.println("UserController > login()");
		
		return "/users/login";
	}
	
	@RequestMapping(value="/join/selectJoin", method= {RequestMethod.GET,RequestMethod.POST})
	public String selectJoinForm() {
		System.out.println("UserController > selectJoinForm()");
		
		return "/users/selectJoin";
	}
	
	@RequestMapping(value="/join/user/agree", method= {RequestMethod.GET,RequestMethod.POST})
	public String userJoinFormAgree() {
		System.out.println("UserController > userJoinAgree()");
		return "/users/userjoin/uAgree";
	}
	
	@RequestMapping(value="/join/user/joinForm", method= {RequestMethod.GET,RequestMethod.POST})
	public String userJoinForm() {
		System.out.println("UserController > userJoinForm()");
		return "/users/userjoin/uJoinForm";
	}
	
	@RequestMapping(value="/join/host/agree", method= {RequestMethod.GET,RequestMethod.POST})
	public String hostJoinFormAgree() {
		System.out.println("UserController > hostJoinAgree()");
		return "/users/hostjoin/hAgree";
	}
	
	
	@RequestMapping(value="/join/host/joinForm", method= {RequestMethod.GET,RequestMethod.POST})
	public String hostJoinForm() {
		System.out.println("UserController > hostJoinForm()");
		return "/users/hostjoin/hJoinForm";
	}
}
