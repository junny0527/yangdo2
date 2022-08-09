package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/my", method = { RequestMethod.GET, RequestMethod.POST })
public class MyPageController {

	/********* main item **********/
	@RequestMapping(value = "/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String info() {
		System.out.println("MyPageController>info()");

		return "mypage/myinfo";
	}

	@RequestMapping(value = "/reservation", method = { RequestMethod.GET, RequestMethod.POST })
	public String reservation() {
		System.out.println("MyPageController>reservation()");

		return "mypage/myreservation";
	}

	@RequestMapping(value = "/yangdo", method = { RequestMethod.GET, RequestMethod.POST })
	public String yangdo() {
		System.out.println("MyPageController>yangdo()");

		return "mypage/myyangdo";
	}

	@RequestMapping(value = "/point", method = { RequestMethod.GET, RequestMethod.POST })
	public String point() {
		System.out.println("MyPageController>point()");

		return "mypage/mypoint";
	}

	/********* main item **********/

	/********* sub item (reservation) **********/

	@RequestMapping(value = "/list/reserved", method = { RequestMethod.GET, RequestMethod.POST })
	public String reserved() {
		System.out.println("MyPageController>reserved()");

		return "mypage/list_reserved";
	}

	@RequestMapping(value = "/list/used", method = { RequestMethod.GET, RequestMethod.POST })
	public String used() {
		System.out.println("MyPageController>used()");

		return "mypage/list_used";
	}

	@RequestMapping(value = "/list/canceled", method = { RequestMethod.GET, RequestMethod.POST })
	public String canceled() {
		System.out.println("MyPageController>canceled()");

		return "mypage/list_canceled";
	}

	/********* sub item (reservation) **********/

	/********* sub item (yangdo) **********/

	@RequestMapping(value = "/list/relisted", method = { RequestMethod.GET, RequestMethod.POST })
	public String relisted() {
		System.out.println("MyPageController>relisted()");

		return "mypage/list_relisted";
	}

	@RequestMapping(value = "/list/transferred", method = { RequestMethod.GET, RequestMethod.POST })
	public String transferred() {
		System.out.println("MyPageController>transferred()");

		return "mypage/list_transferred";
	}

	/********* sub item (yangdo) **********/

	/********* detail (reservation) **********/

	@RequestMapping(value = "/detail/reserved", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailReserved() {
		System.out.println("MyPageController>detailReserved()");

		return "mypage/detail_reserved";
	}

	@RequestMapping(value = "/detail/canceled", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailCanceled() {
		System.out.println("MyPageController>detailCanceled()");

		return "mypage/detail_canceled";
	}

	@RequestMapping(value = "/detail/used", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailUsed() {
		System.out.println("MyPageController>detailUsed()");

		return "mypage/detail_used";
	}

	/********* detail (reservation) **********/

	/********* detail (yangdo) **********/
	@RequestMapping(value = "/detail/relisted", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailRelisted() {
		System.out.println("MyPageController>detailRelisted()");

		return "mypage/detail_relisted";
	}

	@RequestMapping(value = "/detail/transferred", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailTransferred() {
		System.out.println("MyPageController>detailTransferred()");

		return "mypage/detail_transferred";
	}
	/********* detail (yangdo) **********/
}
