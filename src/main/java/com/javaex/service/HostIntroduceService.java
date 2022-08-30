package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.HostIntroduceDao;
import com.javaex.vo.HostIntroduceVo;
import com.javaex.vo.PensionImageVo;

@Service
public class HostIntroduceService {
	
	@Autowired
	private HostIntroduceDao iDao;
	
	public int getCompanyNo(int userNo) {
		return iDao.getCompanyNo(userNo);
	}
	
	public int insertPension(HostIntroduceVo iVo) {

		iDao.insertPension(iVo);
		int pensionNo = iDao.getPensionNo();
		iVo.setPensionNo(pensionNo);
		
		
		
		iDao.insertsido(iVo);
		iDao.insertgugun(iVo);
		
		iDao.updatePensionImg(pensionNo);
		
		HostIntroduceVo arrayVo = new HostIntroduceVo();
		arrayVo.setPensionNo(pensionNo);
		
		String[] publicArray = iVo.getPublicArrays();
		String[] amenitiesArray = iVo.getAmenitiesArrays();
		
		if(publicArray != null) {
			for(int i=0; i<publicArray.length; i++) {
				arrayVo.setPublics(publicArray[i]);
				iDao.insertPublic(arrayVo);
			}
		}
		
		if(amenitiesArray != null) {
			for(int i=0; i<amenitiesArray.length; i++) {
				arrayVo.setAmanities(amenitiesArray[i]);
				iDao.insertAmenities(arrayVo);
			}
		}
		
		System.out.println("service : " + iVo);
		return 1;
	}
	
	public int getPensionNoBySession(int userNo) {
		return iDao.getPensionNoBySession(userNo);
	}
	
	public int updateOpt(HostIntroduceVo iVo) {
		return iDao.updateOpt(iVo);
	}
	
	public List<PensionImageVo> imgUpload(List<MultipartFile> fileList) {
		System.out.println("HostRoomService > imgUpload()");
		String saveDir = "C:\\javaStudy\\upload";
		

		int fileNum = fileList.size();
		
		for(int i=0; i<fileNum; i++) {
			MultipartFile file = fileList.get(i);
			if(file == null) {
				return null;
			}else if(file.getSize() == 0) {
				return null;
			}else {
				//오리지널 파일명
				String orgName = file.getOriginalFilename();
				System.out.println(orgName);
				//확장자
				String exName = orgName.substring(orgName.lastIndexOf("."));
				
				//저장파일명
				String saveName = System.currentTimeMillis()+UUID.randomUUID().toString()+exName;
				
				//파일 경로(디렉토리+저장파일명)
				String filePath = saveDir + "\\" + saveName;
				
				PensionImageVo pensionImgVo = new PensionImageVo();
				pensionImgVo.setSaveName(saveName);
				pensionImgVo.setImagePath(filePath);
				
				//다오--DB저장
				
				iDao.PensionImgInsert(pensionImgVo);
				
				//(2)파일 저장
				try {
					byte[] fileData = file.getBytes();
					OutputStream os = new FileOutputStream(filePath);
					BufferedOutputStream bos = new BufferedOutputStream(os);
					
					bos.write(fileData);
					bos.close();
					
				} catch (IOException e) {
					e.printStackTrace();
				}
				
			}
		}
		
		List<PensionImageVo> piList= iDao.getPensionImg();
		return piList;
	}
	
	public Map<String, Object> getPensionInfo(int pensionNo){
		Map<String, Object> pMap = new HashMap<>();
		
		HostIntroduceVo hVo = iDao.getPensionInfo(pensionNo);
		List<HostIntroduceVo> amen = iDao.getAmenities(pensionNo);
		List<HostIntroduceVo> pubs = iDao.getPublics(pensionNo);
		
		pMap.put("hVo", hVo);
		pMap.put("amen", amen);
		pMap.put("pubs", pubs);

		
		return pMap;
	}
	
	
	
	
	
}
