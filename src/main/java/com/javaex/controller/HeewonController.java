package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/my", method = { RequestMethod.GET, RequestMethod.POST })

public class HeewonController {

	@RequestMapping(value = "/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String info() {
		System.out.println("MyPageController>info()");

		return "mypage/myinfo";
	}

	@RequestMapping(value = "/point", method = { RequestMethod.GET, RequestMethod.POST })
	public String point() {
		System.out.println("MyPageController>point()");

		return "mypage/mypoint";
	}

	@RequestMapping(value = "/reservation", method = { RequestMethod.GET, RequestMethod.POST })
	public String reservation() {
		System.out.println("MyPageController>reservation()");

		return "mypage/myreservation";
	}
}
