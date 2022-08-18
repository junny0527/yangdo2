package com.javaex.api.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.HostReservationService;
import com.javaex.vo.HostReservationVo;
import com.javaex.vo.UserVo;

@Controller
public class HostReservationApiController {
	
	@Autowired
	private HostReservationService hService;
	
	@ResponseBody
	@RequestMapping(value = "api/getReserveList", method = {RequestMethod.GET, RequestMethod.POST})
	public List<HostReservationVo> getList(HttpSession session){
		System.out.println("enter controller");
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		List<HostReservationVo> rList = hService.getList(userNo);
		System.out.println(rList);
		return rList;
	}
	
	
	
	
}
