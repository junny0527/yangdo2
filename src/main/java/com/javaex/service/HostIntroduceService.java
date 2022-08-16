package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostIntroduceDao;
import com.javaex.vo.HostIntroduceVo;

@Service
public class HostIntroduceService {
	
	@Autowired
	private HostIntroduceDao iDao;
	
	public int getCompanyNo(int userNo) {
		return iDao.getCompanyNo(userNo);
	}
	
	public int insertPension(HostIntroduceVo iVo) {
		
		String editName = iVo.getLawName();
		String[] editArray = editName.split(" ");
		
		if(editArray[0].equals("세종특별자치시")) {
			iVo.setLawName(editArray[2]);
		}else {
			iVo.setLawName(editArray[1]);
		}
		
		iDao.insertPension(iVo);
		int pensionNo = iDao.getPensionNo();
		iVo.setPensionNo(pensionNo);
		
		iDao.insertsido(iVo);
		iDao.insertgugun(iVo);
		
		HostIntroduceVo arrayVo = new HostIntroduceVo();
		arrayVo.setPensionNo(pensionNo);
		
		int[] publicArray = iVo.getPublicArrays();
		int[] amenitiesArray = iVo.getAmenitiesArrays();
		
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
	
	
	
	
}
