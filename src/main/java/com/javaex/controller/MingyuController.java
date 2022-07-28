package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MingyuController {
	
	@RequestMapping(value="/yangdo",method = {RequestMethod.GET,RequestMethod.POST})
	public String yangdo() {
		
		return "/sale/yangdo";
	}
}
