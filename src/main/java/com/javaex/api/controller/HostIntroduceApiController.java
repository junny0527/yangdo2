package com.javaex.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javaex.service.HostIntroduceService;
import com.javaex.vo.PensionImageVo;

@Controller
@RequestMapping(value="/api/host/introduce")
public class HostIntroduceApiController {

	@Autowired
	private HostIntroduceService hostIntroService;
	
	@ResponseBody
	@RequestMapping(value="/imgUpload",method = {RequestMethod.GET,RequestMethod.POST})
	public List<PensionImageVo> imgUpload(MultipartHttpServletRequest mtfRequest) {
		System.out.println("HostRoomRegApiController > imgUpload");
		
		if(mtfRequest != null) {
			List<MultipartFile> fileList = mtfRequest.getFiles("fileList");
			
			List<PensionImageVo> riList = hostIntroService.imgUpload(fileList);
			
			System.out.println(riList);
			
			return riList;
			
		}else {
			return null;
		}
	}
	
	
	
}
