package com.javaex.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.UserService;

@Controller
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value="/user/api/joinIdCheck",method= {RequestMethod.GET,RequestMethod.POST})
	public int idCheck(@RequestBody String id) {
		System.out.println("UserApiController > idCheck");
		
		int idcount = userService.idCheck(id);
		System.out.println(idcount);
		return idcount;
	}
	
	
}
