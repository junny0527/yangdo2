package com.javaex.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javaex.service.HostRoomService;
import com.javaex.vo.RoomImageVo;

@Controller
@RequestMapping(value="api/host/room")
public class HostRoomRegApiController {
	
	@Autowired
	private HostRoomService hostRoomService;
	
	@ResponseBody
	@RequestMapping(value="/imgUpload",method = {RequestMethod.GET,RequestMethod.POST})
	public List<RoomImageVo> imgUpload(MultipartHttpServletRequest mtfRequest ) {
		System.out.println("HostRoomRegApiController > imgUpload");
		
		if(mtfRequest != null) {
			List<MultipartFile> fileList = mtfRequest.getFiles("fileList");
			
			List<RoomImageVo> riList = hostRoomService.imgUpload(fileList);
			
			System.out.println(riList);
			
			return riList;
		}else {
		
			return null;
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/imgDelete",method = {RequestMethod.GET,RequestMethod.POST})
	public String imgDelete(@RequestBody int no) {
		System.out.println("HostRoomRegApiController > imgUpload");
		
		int count = hostRoomService.imgDelete(no);
		
		if(count == 1) {
			return "success";
		}else {
			return "false";
		}
	}
	
}
