package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.MyReservationService;

@Controller
@RequestMapping(value = "/my", method = { RequestMethod.GET, RequestMethod.POST })
public class MyPageController {

	@Autowired
	private MyReservationService mrService;

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

	/********* sub item (reservation) 나중에 다시 정리 **********/

	@ResponseBody
	@RequestMapping(value = "/list/reserved/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String reserved(@RequestParam("no") int no, Model model) {
		System.out.println("MyPageController>reserved()");

		List<Map<String, Object>> listMap = mrService.reservedList(no);

		model.addAttribute("listMap", listMap);

		return "mypage/list_reserved";
	}

	@ResponseBody
	@RequestMapping(value = "/list/used/{no}", method = { RequestMethod.GET, RequestMethod.POST })
	public String used(@RequestParam("no") int no, Model model) {
		System.out.println("MyPageController>used()");

		List<Map<String, Object>> listMap = mrService.usedList(no);

		model.addAttribute("listMap", listMap);

		return "mypage/list_used";
	}

	@ResponseBody
	@RequestMapping(value = "/list/canceled", method = { RequestMethod.GET, RequestMethod.POST })
	public String canceled(@RequestParam("no") int no, Model model) {
		System.out.println("MyPageController>canceled()");

		List<Map<String, Object>> listMap = mrService.usedList(no);

		model.addAttribute("listMap", listMap);

		return "mypage/list_canceled";
	}

	/********* sub item (reservation) **********/

	/********* sub item (yangdo) **********/
	@ResponseBody
	@RequestMapping(value = "/list/relisted", method = { RequestMethod.GET, RequestMethod.POST })
	public String relisted(@RequestParam("no") int no, Model model) {
		System.out.println("MyPageController>relisted()");

		List<Map<String, Object>> listMap = mrService.usedList(no);

		model.addAttribute("listMap", listMap);

		return "mypage/list_relisted";
	}

	@ResponseBody
	@RequestMapping(value = "/list/transferred", method = { RequestMethod.GET, RequestMethod.POST })
	public String transferred(@RequestParam("no") int no, Model model) {
		System.out.println("MyPageController>transferred()");

		List<Map<String, Object>> listMap = mrService.usedList(no);

		model.addAttribute("listMap", listMap);

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
