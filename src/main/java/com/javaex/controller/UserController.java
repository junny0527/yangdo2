package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.UserService;
import com.javaex.vo.HostRoomsVo;
import com.javaex.vo.UserVo;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	/////////////////////// 로그인폼
	@RequestMapping(value="/loginForm", method= {RequestMethod.GET,RequestMethod.POST})
	public String login() {
		System.out.println("UserController > loginForm()");
		
		return "/users/login";
	}
	//로그인 (유저 호스트로그인 따로나누기)
	@RequestMapping(value="/login", method = {RequestMethod.GET,RequestMethod.POST})
	public String userLogin(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("UserController > login");
		
		UserVo authUser = userService.userLogin(userVo);
		
		//int repayUser = userService.userLoginbumjun(userVo);
		/* 세션에 저장 */
		if(authUser != null) { //로그인 성공
			session.setAttribute("authUser", authUser);
			//session.setAttribute("repayUser", repayUser);
			if(authUser.getIdentify().equals("host")) {
				int hostNo = authUser.getNo();
				HostRoomsVo hVo = userService.hostLogin(hostNo);
				if(hVo == null) {
					return "redirect:/host/newhost";
				}else {
					return "redirect:/host/main";
				}
			}else {
				return "redirect:/main";
			}
		}else {
			System.out.println("로그인 실패");
			return "/users/loginfailForm";
		}
		
	}
	//로그아웃
	@RequestMapping(value="/logout", method= {RequestMethod.GET,RequestMethod.POST})
	public String logout(HttpSession session) {
		System.out.println("UserController>logout");
		session.removeAttribute("authUser");
		session.invalidate();
		
		return "redirect:/loginForm";
	}
	
	//회원가입
	@RequestMapping(value="/selectJoin", method= {RequestMethod.GET,RequestMethod.POST})
	public String selectJoinForm() {
		System.out.println("UserController > selectJoinForm()");
		
		return "/users/selectJoin";
	}
	//유저 회원가입
	@RequestMapping(value="/user/agree", method= {RequestMethod.GET,RequestMethod.POST})
	public String userJoinFormAgree() {
		System.out.println("UserController > userJoinAgree()");
		return "/users/userjoin/uAgree";
	}
	
	@RequestMapping(value="/user/joinForm", method= {RequestMethod.GET,RequestMethod.POST})
	public String userJoinForm() {
		System.out.println("UserController > userJoinForm()");
		return "/users/userjoin/uJoinForm";
	}
	
	@RequestMapping(value="/user/join" , method= {RequestMethod.GET,RequestMethod.POST})
	public String userJoin(@ModelAttribute UserVo userVo) {
		System.out.println("UserController > userJoin");
		
		userService.userJoin(userVo);
		
		return "redirect:/loginForm";
	}
	
	
	//호스트 회원가입
	@RequestMapping(value="/host/agree", method= {RequestMethod.GET,RequestMethod.POST})
	public String hostJoinFormAgree() {
		System.out.println("UserController > hostJoinAgree()");
		return "/users/hostjoin/hAgree";
	}
	
	
	@RequestMapping(value="/host/joinForm", method= {RequestMethod.GET,RequestMethod.POST})
	public String hostJoinForm() {
		System.out.println("UserController > hostJoinForm()");
		return "/users/hostjoin/hJoinForm";
	}
	
	@RequestMapping(value="/host/join", method= {RequestMethod.GET,RequestMethod.POST})
	public String hostJoin(@ModelAttribute UserVo userVo) {
		System.out.println("UserController >  hostJoin");
		
		userService.hostJoin(userVo);
		
		return "redirect:/loginForm";
	}
	
	

	
}
