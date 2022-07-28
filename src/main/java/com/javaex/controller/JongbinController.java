package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JongbinController {

	
	
	@RequestMapping(value="/reservation", method = {RequestMethod.GET, RequestMethod.POST})
	public String test1() {
		System.out.println("test1");
		
		return "detail/reservation";
	}
	
	@RequestMapping(value="/infomation", method = {RequestMethod.GET, RequestMethod.POST})
	public String test2() {
		System.out.println("test2");
		
		return "detail/infomation";
	}
	
	@RequestMapping(value="/review", method = {RequestMethod.GET, RequestMethod.POST})
	public String test3() {
		System.out.println("test3");
		
		return "detail/review";
	}
}
