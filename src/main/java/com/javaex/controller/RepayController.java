package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.PointsService;
import com.javaex.service.RePayService;
//import com.javaex.vo.PointsVo;
import com.javaex.vo.RePayVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "/res")
public class RepayController {

	@Autowired
	private RePayService rePayService;

	@Autowired
	private PointsService pointsService;

//	@Autowired
//	private PointsDao dao;
	
//===========================================================================================================	

	// 예약
	@GetMapping("/reserve")
	public String reserve(Model model, HttpSession session, @RequestParam Map<String, Object> params) {
		System.out.println("\t\t BumJunController::reserve() invoked...");

		// 1.펜션가격 스트링으로 넘어온거 숫자로 바꿔주고 넣어주기
		// 1-1펜션가격
		String trans = (String) params.get("price");
		String price = trans.replaceAll(",", "");
		int get = Integer.parseInt(price);
		params.put("price", get);
		// 1-2어른추가가격
		String transadult = (String) params.get("adultPrice");
		String priceadult = transadult.replaceAll(",", "");
		int getadult = Integer.parseInt(priceadult);
		params.put("priceadult", getadult);
		// 1-2유아추가가격
		String transkid = (String) params.get("kidPrice");
		String pricekid = transkid.replaceAll(",", "");
		int getkid = Integer.parseInt(pricekid);
		params.put("pricekid", getkid);

		// 2.몇박 구해주기
		rePayService.getRePay(params);

		// 3.받아온 파라미터 데이터 jsp 로보내주기
		System.out.println("no:" + params);
		model.addAttribute("rpMap", params);

		// 4.유저 번호 가져오기
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		if(userVo == null) {
			return "redirect:/loginForm";
		}
		int userNo = userVo.getNo();

		// 5.총합포인트 가져오기
		Map<String, Object> gajidaPoints = pointsService.getpoints(userNo);
		model.addAttribute("gajidaPoints", gajidaPoints);

		// 5.데이터 확인해주기
		System.out.println("==================================");
		System.out.println(params.get("price"));
		System.out.println(params);
		System.out.println("컴마뺸가격:" + price);
		System.out.println("컴마뺸가격:" + getadult);
		System.out.println("컴마뺸가격:" + getkid);
		System.out.println(userNo);
		System.out.println(gajidaPoints);
		System.out.println("==================================");

		return "/pay/reserve";
	}
	
//===========================================================================================================	

	// 양도예약
	@GetMapping("/yangdoreserve/{no}")
	public String yangdoreserve(@PathVariable int no, Model model, HttpSession session,
			@RequestParam Map<String, Object> params) {
		System.out.println("\t\t BumJunController::yangdoreserve() invoked...");

		// 1.펜션가격 스트링으로 넘어온거 숫자로 바꿔주고 넣어주기
		// 1-1펜션가격가격
		String trans = (String) params.get("transPrice");
		String transprice = trans.replaceAll(",", "");
		int get = Integer.parseInt(transprice);
		params.put("transPrice", get);
		// 1-2어른추가가격
		String transadult = (String) params.get("adultPrice");
		String priceadult = transadult.replaceAll(",", "");
		int getadult = Integer.parseInt(priceadult);
		params.put("priceadult", getadult);
		// 1-2유아추가가격
		String transkid = (String) params.get("kidPrice");
		String pricekid = transkid.replaceAll(",", "");
		int getkid = Integer.parseInt(pricekid);
		params.put("pricekid", getkid);

		// 2.받아온 파라미터 데이터 jsp 로보내주기
		model.addAttribute("params", params);

		// 3.일반예약된 데이터 가져오기
		Map<String, Object> rpMap = rePayService.getyangdoRePay(no);
		model.addAttribute("rpMap", rpMap);

		// 4.유저 번호 가져오기
		UserVo userVo = (UserVo) session.getAttribute("authUser");
		if(userVo == null) {
			return "redirect:/loginForm";
		}
		int userNo = userVo.getNo();
		
		// 5.총합포인트 가져오기
		Map<String, Object> gajidaPoints = pointsService.getpoints(userNo);
		model.addAttribute("gajidaPoints", gajidaPoints);

		// 6.데이터 확인해주기
		System.out.println("==================================");
		System.out.println("params: "+params);
		System.out.println("rpMAp: "+rpMap);
		System.out.println("컴마뺸가격:" + transprice);
		System.out.println("컴마뺸가격:" + getadult);
		System.out.println("컴마뺸가격:" + getkid);
		System.out.println(userNo);
		System.out.println(gajidaPoints);
		System.out.println("==================================");

		return "/pay/yangdoReserve";
	}
	
//===========================================================================================================	

	// 일반 결제 인서트
	@PostMapping("/repay")
	@ResponseBody
	public Map<String, Object> reInsert(@RequestBody RePayVo bean) {
		System.out.println("\t\t BumJunController::reInsert() invoked...");
		System.out.println("Controller RePayVo::" + bean);
		return rePayService.PayInsert(bean);
	}

//===========================================================================================================

	// 양도 결제 인서트+업데이트
	@PostMapping("/yangdoUpdateInsert")
	@ResponseBody
	public Map<String, Object> yangdoUpdateInsert(@RequestBody RePayVo bean) {
		System.out.println("\t\t BumJunController::yangdoUpdateInsert() invoked...");
		System.out.println("RePayVo::" + bean);

		return rePayService.yangdoUpdateInsert(bean);

	}

//===========================================================================================================	
	/*
	 * -----------------------------------------------------------------------------
	 * ---테스트------------------------------------------------------------
	 */
	/*
	 * @GetMapping("/testApi")
	 * 
	 * @ResponseBody public String test(Model model) throws JsonProcessingException
	 * { Map<String, Object> params = new HashMap<>(); Map<String, Object> params2 =
	 * new HashMap<>(); params.put("count", 1); params.put("num", 10);
	 * params2.put("data", params); ObjectMapper om = new ObjectMapper(); String
	 * personJson = om.writeValueAsString(params2);
	 * 
	 * return personJson; }
	 */

	/*
	 * @GetMapping("/test") public String test() {
	 * 
	 * return "/pay/test"; }
	 */

//	@PostMapping("/test")
//	public void test(RePayVo vo) {
//		vo.setPoint("500");
//		vo.setNo(1);
//		dao.pointsInsert(vo);
//	}

}
