package com.javaex.api.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.HostReservationService;
import com.javaex.vo.HostReservationVo;
import com.javaex.vo.PointsVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "host")
public class HostReservationApiController {
	
	@Autowired
	private HostReservationService hService;
	
	@ResponseBody
	@RequestMapping(value = "api/getReserveList", method = {RequestMethod.GET, RequestMethod.POST})
	public List<HostReservationVo> getList(HttpSession session){
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int hostNo = uVo.getNo();
		System.out.println("세션 : " + hostNo);
		int pensionNo = hService.getPensionNo(hostNo);
		System.out.println("펜션번호" + pensionNo);
		List<HostReservationVo> rList = hService.getList(pensionNo);
		System.out.println(rList);
		return rList;
	}
	
	@ResponseBody
	@RequestMapping(value = "api/getReserve", method= {RequestMethod.GET, RequestMethod.POST})
	public HostReservationVo getReserve(HttpSession session, @RequestBody String reserveid) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int hostNo = uVo.getNo();
		int pensionNo = hService.getPensionNo(hostNo);
		HostReservationVo hVo = hService.getReserve(pensionNo, reserveid);
		System.out.println("hVo 결과: " + hVo);
		return hVo;
	}
	
	@ResponseBody
	@RequestMapping(value = "api/givepoints", method= {RequestMethod.GET,RequestMethod.POST})
	public int givePoint(@RequestBody PointsVo pVo) {
		System.out.println("controller" + pVo);
		return hService.givePoint(pVo);
	}
	
	@ResponseBody
	@RequestMapping(value = "api/changestatusUsed", method= {RequestMethod.GET,RequestMethod.POST})
	public int changestatusUsed(@RequestBody String reserveNum) {
		System.out.println("controller" + reserveNum);
		return hService.changestatusUsed(reserveNum);
	}
	
	@ResponseBody
	@RequestMapping(value = "api/changestatusReserveCancel", method= {RequestMethod.GET,RequestMethod.POST})
	public int changestatusReserveCancel(@RequestBody String reserveNum) {
		System.out.println("controller" + reserveNum);
		return hService.changestatusReserveCancel(reserveNum);
	}
	
	
	@ResponseBody
	@RequestMapping(value = "api/changestatusRoomCheckin", method= {RequestMethod.GET,RequestMethod.POST})
	public int changestatusRoomCheckin(@RequestBody String reserveNum) {
		System.out.println("controller" + reserveNum);
		return hService.changestatusRoomCheckin(reserveNum);
	}
	
	
	
	
	
	
}
