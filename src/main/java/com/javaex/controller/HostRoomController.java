package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String roomreg(HttpSession session ,@ModelAttribute HostRoomsVo rVo, Model model) {
		System.out.println("HostRoomController > roomreg ");
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		rVo.setUserNo(userNo);
		
		Map<String,Object> rMap = hostRoomSerivce.getRoomInfo(rVo);
		
		model.addAttribute("rMap", rMap);
		return "/host/roomRegister";
	}
	
	@RequestMapping(value="roomsave",method= {RequestMethod.GET,RequestMethod.POST})
	public String roomSave(HttpSession session , @ModelAttribute HostRoomsVo rVo) {
		System.out.println("HostRoomController > roomSave ");
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();

		rVo.setUserNo(userNo);
		hostRoomSerivce.roomSave(rVo);
		
		return "redirect:/host/main";
	}
}
