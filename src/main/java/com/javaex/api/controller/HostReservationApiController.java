package com.javaex.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.HostReservationService;
import com.javaex.vo.HostReservationVo;

@Controller
public class HostReservationApiController {
	
	@Autowired
	private HostReservationService hService;
	
	@ResponseBody
	@RequestMapping(value = "api/getReserveList", method = {RequestMethod.GET, RequestMethod.POST})
	public List<HostReservationVo> getList(){
		int userNo = 1;
		List<HostReservationVo> rList = hService.getList(userNo);
		System.out.println(rList);
		return rList;
	}
	
	@ResponseBody
	@RequestMapping(value = "api/getReserve", method= {RequestMethod.GET, RequestMethod.POST})
	public HostReservationVo getReserve(Integer userNo, @RequestBody String reserveid) {
		userNo = 1;
		HostReservationVo hVo = hService.getReserve(userNo, reserveid);
		System.out.println("hVo 결과: " + hVo);
		return hVo;
	}
	
	
}
