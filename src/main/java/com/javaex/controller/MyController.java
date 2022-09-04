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
import com.javaex.service.SaleService;
import com.javaex.vo.MyListVo;
import com.javaex.vo.MyPointVo;
import com.javaex.vo.UserReviewVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "/my", method = { RequestMethod.GET, RequestMethod.POST })
public class MyController {

	@Autowired
	private MyService myService;

	@Autowired
	private PointsService pService;

	@Autowired
	private SaleService saleService;

	/********* main item **********/

	// 포인트 페이지
	@RequestMapping(value = "/point", method = { RequestMethod.GET, RequestMethod.POST })
	public String point(HttpSession session, Model model) {
		System.out.println("MyController>point()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}

		int userNo = authUser.getNo();

		List<MyPointVo> pList = pService.getUserPoint(userNo);
		Map<String, Object> psMap = pService.getpoints(userNo);
		model.addAttribute("pList", pList);
		model.addAttribute("psMap", psMap);
		return "mypage/mypoint";
	}

	// 내정보 페이지
	@RequestMapping(value = "/info", method = { RequestMethod.GET, RequestMethod.POST })
	public String info(HttpSession session, Model model) {
		System.out.println("MyController>info()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}

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

		if (authUser == null) {
			return "redirect:/loginForm";
		}
		int no = authUser.getNo();

		Map<String, List<MyListVo>> myMap = myService.reservationList(no);

		model.addAttribute("myMap", myMap);

		return "mypage/myreservation";
	}

	// 양도내역 페이지
	@RequestMapping(value = "/yangdo", method = { RequestMethod.GET, RequestMethod.POST })
	public String yangdo(HttpSession session, Model model) {
		System.out.println("MyController>yangdo()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}

		int no = authUser.getNo();

		Map<String, List<MyListVo>> myMap2 = myService.yangdoList(no);

		model.addAttribute("myMap2", myMap2);

		return "mypage/myyangdo";
	}

	/********* main item **********/

	/********* sub item **********/

	@RequestMapping(value = "/list/reserve", method = { RequestMethod.GET, RequestMethod.POST })
	public String reserved(@ModelAttribute MyListVo myListVo, Model model, HttpSession session) {
		System.out.println("MyController>reserved()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}
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

		if (authUser == null) {
			return "redirect:/loginForm";
		}
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

		if (authUser == null) {
			return "redirect:/loginForm";
		}
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

		if (authUser == null) {
			return "redirect:/loginForm";
		}
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

		if (authUser == null) {
			return "redirect:/loginForm";
		}
		int no = authUser.getNo();
		System.out.println(no);

		List<MyListVo> list = myService.getTransferList(no);

		model.addAttribute("list", list);

		return "mypage/listTransfer";
	}

	/********* sub item (yangdo) **********/

	/********* detail (all) **********/
	@RequestMapping(value = "/detail", method = { RequestMethod.GET, RequestMethod.POST })
	public String detail(@RequestParam(value = "resNo", required = true, defaultValue = "0") int resNo, Model model,
			HttpSession session) {
		System.out.println("MyController>detail()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}

		Map<String, Object> dMap = myService.getDetail(resNo);
		System.out.println(dMap);
		Map<String, Object> sMap = saleService.getReservation(resNo);

		model.addAttribute("dMap", dMap);
		model.addAttribute("sMap", sMap);

		return "mypage/detail";
	}

	/********* detail (all) **********/

	/********* reviews **********/
	@RequestMapping(value = "/review", method = { RequestMethod.GET, RequestMethod.POST })
	public String reviewForm(@RequestParam(value = "resNo", required = true, defaultValue = "0") int resNo,
			HttpSession session, Model model) {
		System.out.println("MyController>writeReview");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}

		return "mypage/myreview";
	}

	@RequestMapping(value = "/review/write", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeReview(@ModelAttribute UserReviewVo uRvo, HttpSession session) {
		System.out.println("MyController>writeReview");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}

		uRvo.setno(authUser.getNo());

		myService.writeReview(uRvo);

		int pensionNo = uRvo.getpNo();

		return "redirect: ../reservation";
	}

	/*
	 * @RequestMapping(value = "review/modify", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String reviewModify(@RequestParam("resNo") int
	 * resNo, HttpSession session, Model model) {
	 * System.out.println("MyController>review/modify()");
	 * 
	 * UserVo authUser = (UserVo) session.getAttribute("authUser");
	 * 
	 * if (authUser == null) { return "redirect:/loginForm"; }
	 * 
	 * List<UserReviewVo> revList = myService.getReview(resNo);
	 * model.addAttribute("revList", revList);
	 * 
	 * return "mypage/myreviewModify"; }
	 */
	/*
	 * @RequestMapping(value = "review/rewrite", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String reviewModify(@RequestParam("resNo") int
	 * resNo, HttpSession session) {
	 * System.out.println("MyController>review/rewrite()");
	 * 
	 * UserVo authUser = (UserVo) session.getAttribute("authUser");
	 * 
	 * if (authUser == null) { return "redirect:/loginForm"; }
	 * 
	 * myService.updateReview(resNo);
	 * 
	 * return "redirect: /reservation";
	 */

	/********* action (all) **********/
	@ResponseBody
	@RequestMapping(value = "/remove", method = { RequestMethod.GET, RequestMethod.POST })
	public int remove(@RequestParam("no") int no) {
		System.out.println("MyController>remove()");

		return myService.remove(no);
	}

	@ResponseBody
	@RequestMapping(value = "/update/cancel", method = { RequestMethod.GET, RequestMethod.POST })
	public int cancelUpdate(@RequestParam("no") int no) {
		System.out.println("MyController>cancelUpdate()");

		return myService.cancelUpdate(no);
	}

	@RequestMapping(value = "update/nickname", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateNickName(@ModelAttribute UserVo uVo, HttpSession session) {
		System.out.println("MyController>updateNickName()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}

		uVo.setNo(authUser.getNo());
		myService.updateNickName(uVo);
		authUser.setNickName(uVo.getNickName());

		return "redirect: ../info";
	}

	@RequestMapping(value = "update/hp", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateHp(@ModelAttribute UserVo uVo, HttpSession session) {
		System.out.println("MyController>updateHp()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}

		uVo.setNo(authUser.getNo());

		myService.updateHp(uVo);

		return "redirect: ../info";
	}

	@RequestMapping(value = "update/pw", method = { RequestMethod.GET, RequestMethod.POST })
	public String updatePw(@ModelAttribute UserVo uVo, HttpSession session) {
		System.out.println("MyController>updatePw()");

		UserVo authUser = (UserVo) session.getAttribute("authUser");

		if (authUser == null) {
			return "redirect:/loginForm";
		}

		uVo.setNo(authUser.getNo());

		myService.updatePw(uVo);

		return "redirect: ../info";
	}

}
