package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.HostRoomService;
import com.javaex.vo.HostRoomsVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value="host")
public class HostRoomController {
	
	@Autowired
	private HostRoomService hostRoomSerivce;
	
	@RequestMapping(value="roomreg", method={RequestMethod.GET, RequestMethod.POST})
	public String roomreg() {
		System.out.println("HostRoomController > roomreg ");
		return "/host/roomRegister";
	}
	
	@RequestMapping(value="roomsave",method= {RequestMethod.GET,RequestMethod.POST})
	public String roomSave(HttpSession session , @ModelAttribute HostRoomsVo rVo) {
		System.out.println("HostRoomController > roomSave ");
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		System.out.println(rVo);
		rVo.setUserNo(userNo);
		
		//hostRoomSerivce.roomSave(rVo , file);
		
		return "redirect:/host/main";
	}
}
