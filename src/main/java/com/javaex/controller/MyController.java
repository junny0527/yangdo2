package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.MyService;
import com.javaex.vo.MyListVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "/my", method = { RequestMethod.GET, RequestMethod.POST })
public class MyController {

	@Autowired
	private MyService myService;

	/********* list test **********/

	/********* main item **********/
	@RequestMapping(value = "/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String list(@ModelAttribute MyListVo myListVo, Model model, HttpSession session) {
		System.out.println("MyController>list()");

		// 유저번호 세션에서 불러오기
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		// int no = 2;

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
	public String yangdo(@ModelAttribute MyListVo myListVo, HttpSession session, Model model) {
		System.out.println("MyController>yangdo()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

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
		System.out.println("MyController>point()");

		return "mypage/mypoint";
	}

	@RequestMapping(value = "/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String info() {
		System.out.println("MyController>info()");

		return "mypage/myinfo";
	}

	/********* main item **********/

	/********* sub item (reservation) 나중에 다시 정리 **********/

	@RequestMapping(value = "/list/reserve", method = { RequestMethod.GET, RequestMethod.POST })
	public String reserved(@ModelAttribute MyListVo myListVo, Model model, HttpSession session) {
		System.out.println("MyController>reserved()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		List<MyListVo> list = myService.getReserveList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listReserve";

	}

	@RequestMapping(value = "/list/used", method = { RequestMethod.GET, RequestMethod.POST })
	public String listUsed(@ModelAttribute MyListVo myListVo, Model model, HttpSession session) {
		System.out.println("MyController>list()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		List<MyListVo> list = myService.getUsedList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listUsed";
	}

	@RequestMapping(value = "/list/cancel", method = { RequestMethod.GET, RequestMethod.POST })
	public String cancel(@ModelAttribute MyListVo myListVo, Model model, HttpSession session) {
		System.out.println("MyController>cancel()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		List<MyListVo> list = myService.getCancelList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listCancel";
	}

	/********* sub item (reservation) **********/

	/********* sub item (yangdo) **********/
	@RequestMapping(value = "/list/relist", method = { RequestMethod.GET, RequestMethod.POST })
	public String relist(@ModelAttribute MyListVo myListVo, Model model, HttpSession session) {
		System.out.println("MyController>relisted()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		List<MyListVo> list = myService.getRelistList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listRelist";
	}

	@RequestMapping(value = "/list/transfer", method = { RequestMethod.GET, RequestMethod.POST })
	public String transfer(@ModelAttribute MyListVo myListVo, Model model, HttpSession session) {
		System.out.println("MyController>transfer()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		List<MyListVo> list = myService.getTransferList(no);
		System.out.println(list);

		model.addAttribute("list", list);

		return "mypage/listTransfer";
	}

	/********* sub item (yangdo) **********/

	/********* detail (reservation) **********/

	@RequestMapping(value = "/reserved", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailReserved(@RequestParam("resNo") int resNo, @ModelAttribute MyListVo myListVo, Model model,
			HttpSession session) {
		System.out.println("MyController>detailReserved()");

		List<MyListVo> dlist = myService.getDetail(resNo);
		model.addAttribute("dlist", dlist);

		return "mypage/detail_reserved";
	}

	@RequestMapping(value = "/canceled", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailCanceled(@RequestParam("resNo") int resNo, @ModelAttribute MyListVo myListVo, Model model) {
		System.out.println("MyController>detailCanceled()");

		List<MyListVo> dlist = myService.getDetail(resNo);
		model.addAttribute("dlist", dlist);

		return "mypage/detail_canceled";
	}

	@RequestMapping(value = "/used", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailUsed(@RequestParam("resNo") int resNo, @ModelAttribute MyListVo myListVo, Model model,
			HttpSession session) {
		System.out.println("MyController>detailUsed()");

		List<MyListVo> dlist = myService.getDetail(resNo);
		model.addAttribute("dlist", dlist);

		return "mypage/detail_used";
	}

	/********* detail (reservation) **********/

	/********* detail (yangdo) **********/
	@RequestMapping(value = "/relisted", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailRelisted(@RequestParam("resNo") int resNo, @ModelAttribute MyListVo myListVo, Model model,
			HttpSession session) {
		System.out.println("MyController>detailRelisted()");

		List<MyListVo> dlist = myService.getDetail(resNo);
		model.addAttribute("dlist", dlist);

		return "mypage/detail_relisted";
	}

	@RequestMapping(value = "/transferred", method = { RequestMethod.GET, RequestMethod.POST })
	public String detailTransferred(@RequestParam("resNo") int resNo, @ModelAttribute MyListVo myListVo, Model model,
			HttpSession session) {
		System.out.println("MyController>detailTransferred()");

		List<MyListVo> dlist = myService.getDetail(resNo);
		model.addAttribute("dlist", dlist);

		return "mypage/detail_transferred";
	}
	/********* detail (yangdo) **********/
}
