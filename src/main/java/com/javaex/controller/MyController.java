package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.MyService;
import com.javaex.vo.MyListVo;

@Controller
@RequestMapping(value = "/my", method = { RequestMethod.GET, RequestMethod.POST })
public class MyController {

	@Autowired
	private MyService myService;

	/********* list test **********/

	/********* main item **********/
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(@ModelAttribute MyListVo myListVo, Model model) {
		System.out.println("MyController>list()");

		int no = 1;

		// 예약완료 리스트
		List<MyListVo> rlist = myService.getReserveList(no);
		System.out.println(rlist);

		// 이용완료 리스트
		List<MyListVo> ulist = myService.getUsedList(no);
		System.out.println(ulist);

		// 예약취소 리스트
		List<MyListVo> clist = myService.getCancelList(no);
		System.out.println(clist);

		model.addAttribute("rlist", rlist);
		model.addAttribute("ulist", ulist);
		model.addAttribute("clist", clist);

		return "mypage/myreservation";
	}

	@RequestMapping(value = "/yangdo", method = { RequestMethod.GET, RequestMethod.POST })
	public String yangdo(@ModelAttribute MyListVo myListVo, Model model) {
		System.out.println("MyController>yangdo()");

		int no = 1;

		// 예약완료 리스트
		List<MyListVo> ylist = myService.getRelistList(no);
		System.out.println(ylist);

		// 이용완료 리스트
		List<MyListVo> tlist = myService.getTransferList(no);
		System.out.println(tlist);

		model.addAttribute("ylist", ylist);
		model.addAttribute("tlist", tlist);

		return "mypage/myyangdo";
	}

	@RequestMapping(value = "/point", method = { RequestMethod.GET, RequestMethod.POST })
	public String point() {
		System.out.println("MyPageController>point()");

		return "mypage/mypoint";
	}

	@RequestMapping(value = "/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String info() {
		System.out.println("MyPageController>info()");

		return "mypage/myinfo";
	}

	/********* main item **********/

	/********* sub item (reservation) 나중에 다시 정리 **********/

	@RequestMapping(value = "/list/reserve", method = { RequestMethod.GET, RequestMethod.POST })
	public String reserved(@ModelAttribute MyListVo myListVo, Model model) {
		System.out.println("MyPageController>reserved()");

		int no = 1;

		List<MyListVo> list = myService.getUserList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listReserve";

	}

	@RequestMapping(value = "/list/used", method = { RequestMethod.GET, RequestMethod.POST })
	public String listUsed(@ModelAttribute MyListVo myListVo, Model model) {
		System.out.println("MyController>list()");

		int no = 1;

		List<MyListVo> list = myService.getUserList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listUsed";
	}

	@RequestMapping(value = "/list/cancel", method = { RequestMethod.GET, RequestMethod.POST })
	public String cancel(@ModelAttribute MyListVo myListVo, Model model) {
		System.out.println("MyController>cancel()");

		int no = 1;

		List<MyListVo> list = myService.getUserList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listCancel";
	}

	/********* sub item (reservation) **********/

	/********* sub item (yangdo) **********/
	@RequestMapping(value = "/list/relist", method = { RequestMethod.GET, RequestMethod.POST })
	public String relist(@ModelAttribute MyListVo myListVo, Model model) {
		System.out.println("MyController>relisted()");

		int no = 1;

		List<MyListVo> list = myService.getUserList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listRelist";
	}

	@RequestMapping(value = "/list/transfer", method = { RequestMethod.GET, RequestMethod.POST })
	public String transfer(@ModelAttribute MyListVo myListVo, Model model) {
		System.out.println("MyController>transfer()");

		int no = 1;

		List<MyListVo> list = myService.getUserList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listTransfer";
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
