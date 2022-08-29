package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.HostIntroduceService;
import com.javaex.vo.HostIntroduceVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping(value = "host")
public class HostIntroduceController {
	
	@Autowired
	private HostIntroduceService iService;
	
	@RequestMapping(value="introreg", method= {RequestMethod.GET, RequestMethod.POST})
	public String introreg(HttpSession session) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		int pensionNo = iService.getPensionNoBySession(userNo);
		
		if(pensionNo != 0) {
			return "redirect:/host/updateintro";
		}else {
			return "/host/introduce";
		}
	}
	
	@RequestMapping(value = "introsave", method= {RequestMethod.GET, RequestMethod.POST})
	public String introsave(HttpSession session, @ModelAttribute HostIntroduceVo iVo) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		int companyNo = iService.getCompanyNo(userNo);
		iVo.setCompanyNo(companyNo);
		System.out.println(iVo);
		iService.insertPension(iVo);
		return "host/introduce2";
	}
	
	@RequestMapping(value="introregopt", method= {RequestMethod.GET, RequestMethod.POST})
	public String introregopt(HttpSession session){
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		int pensionNo = iService.getPensionNoBySession(userNo);
		
		if(pensionNo != 0) {
			return "redirect:/host/updateintroopt";
		}else {
			return "/host/introduce2";
		}
	}
	
	@RequestMapping(value="introoptsave", method= {RequestMethod.GET, RequestMethod.POST})
	public String introroptsave(HttpSession session, @ModelAttribute HostIntroduceVo iVo){
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		int pensionNo = iService.getPensionNoBySession(userNo);
		System.out.println("pensionNo : " + pensionNo);
		iVo.setPensionNo(pensionNo);
		iService.updateOpt(iVo);
		return "/host/rules";
	}
	
	@RequestMapping(value="updateintro", method= {RequestMethod.GET, RequestMethod.POST})
	public String loadIntroduce(HttpSession session, Model model) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		int pensionNo = iService.getPensionNoBySession(userNo);
		Map<String, Object> pMap = iService.getPensionInfo(pensionNo);
		model.addAttribute("pMap", pMap);
		
		return "/host/Updateintroduce";
	}
	
	@RequestMapping(value="updateintroopt", method= {RequestMethod.GET, RequestMethod.POST})
	public String loadIntroduce2(HttpSession session, Model model) {
		UserVo uVo = (UserVo) session.getAttribute("authUser");
		int userNo = uVo.getNo();
		int pensionNo = iService.getPensionNoBySession(userNo);
		Map<String, Object> pMap = iService.getPensionInfo(pensionNo);
		model.addAttribute("pMap", pMap);
		
		return "/host/Updateintroduce2";
	}
		
	
}
