package com.javaex.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.MyService;
import com.javaex.service.PointsService;
import com.javaex.vo.MyListVo;
import com.javaex.vo.MyPointVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "/my", method = { RequestMethod.GET, RequestMethod.POST })
public class MyController {

	@Autowired
	private MyService myService;

	@Autowired
	private PointsService pService;

	/********* main item **********/

	// 포인트 페이지
	@RequestMapping(value = "/point", method = { RequestMethod.GET, RequestMethod.POST })
	public String point(HttpSession session, Model model) {
		System.out.println("MyController>point()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getNo();

		List<MyPointVo> pList = pService.getUserPoint(userNo);
		Map<String, Object> psMap = pService.getpoints(userNo);
		model.addAttribute("pList", pList);
		model.addAttribute("psMap", psMap);

		return "mypage/mypoint";
	}

	// 내정보 페이지
	@RequestMapping(value = "/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String info(@RequestParam("no") int no, HttpSession session, Model model) {
		System.out.println("MyController>info()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getNo();

		UserVo uVo = myService.getUserInfo(userNo);

		model.addAttribute("uVo", uVo);

		return "mypage/myinfo";
	}

	// 예약내역 페이지
	@RequestMapping(value = "/reservation", method = { RequestMethod.GET, RequestMethod.POST })
	public String reservation(Model model, HttpSession session) {
		System.out.println("MyController>reservation()");

		// 유저번호 세션에서 불러오기
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		Map<String, List<MyListVo>> myMap = myService.reservationList(no);

		model.addAttribute("myMap", myMap);

		return "mypage/myreservation";
	}

	// 양도내역 페이지
	@RequestMapping(value = "/yangdo", method = { RequestMethod.GET, RequestMethod.POST })
	public String yangdo(HttpSession session, Model model) {
		System.out.println("MyController>yangdo()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		Map<String, List<MyListVo>> myMap2 = myService.yangdoList(no);

		model.addAttribute("myMap2", myMap2);

		return "mypage/myyangdo";
	}

	/********* main item **********/

	/********* list (ajax) **********/
	@ResponseBody
	@RequestMapping(value = "api/list", method = { RequestMethod.GET, RequestMethod.POST })
	public List<MyListVo> getUserList(HttpSession session) {
		System.out.println("MyReservationApiController>getUserList()");

		// 유저번호 세션에서 불러오기
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		List<MyListVo> myList = myService.getUserList(no);

		return myList;
	}

	/********* list (ajax) **********/

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

		model.addAttribute("list", list);

		return "mypage/listTransfer";
	}

	/********* sub item (yangdo) **********/

	/********* detail (all) **********/
	@RequestMapping(value = "/detail", method = { RequestMethod.GET, RequestMethod.POST })
	public String detail(@RequestParam(value = "resNo", required = false, defaultValue = "0") int resNo, Model model) {
		System.out.println("MyController>detail()");
		System.out.println("resNo" + resNo);

		List<MyListVo> myVo = myService.getDetail(resNo);

		model.addAttribute("myVo", myVo);

		return "mypage/detail";
	}

	/********* detail (all) **********/
	@ResponseBody
	@RequestMapping(value = "/remove", method = { RequestMethod.GET, RequestMethod.POST })
	public int remove(@RequestParam("no") int no) {
		System.out.println("MyController>remove()");

		return myService.remove(no);
	}

	@RequestMapping(value = "/update/status", method = { RequestMethod.GET, RequestMethod.POST })
	public String cancelUpdate(@ModelAttribute MyListVo myVo) {
		System.out.println("MyController>cancelUpdate()");

		myService.cancelUpdate(myVo);

		return "redirect: /reservation";
	}

	@RequestMapping(value = "update/nickname", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateNickName(@ModelAttribute UserVo uVo, HttpSession session) {
		System.out.println("MyController>updateNickName()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		myService.updateNickName(uVo);

		return "redirect: /info";
	}

	@RequestMapping(value = "update/hp", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateHp(@ModelAttribute UserVo uVo, HttpSession session) {
		System.out.println("MyController>updateHp()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		myService.updateHp(uVo);

		return "redirect: /info";
	}

	@ResponseBody
	@RequestMapping(value = "update/pw", method = { RequestMethod.GET, RequestMethod.POST })
	public String updatePw(@ModelAttribute UserVo uVo, HttpSession session) {
		System.out.println("MyController>updatePw()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		System.out.println(no);

		myService.updatePw(uVo);

		return "redirect: /info";
	}

}
