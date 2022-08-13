package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostIntroduceDao;
import com.javaex.vo.HostIntroduceVo;

@Service
public class HostIntroduceService {
	
	@Autowired
	private HostIntroduceDao iDao;
	
	public int insertPension(HostIntroduceVo iVo) {
		
		String editName = iVo.getLawName();
		String[] editArray = editName.split(" ");
		iVo.setLawName(editArray[1]);
		
		int[] publicArray = iVo.getPublicArrays();
		int[] amenitiesArray = iVo.getAmenitiesArrays();
		
		if(publicArray != null) {
			for(int i=0; i<publicArray.length; i++) {
				iDao.insertPublic(publicArray[i]);
			}
		}
		
		if(amenitiesArray != null) {
			for(int i=0; i<amenitiesArray.length; i++) {
				iDao.insertAmenities(amenitiesArray[i]);
			}
		}
		
		System.out.println("service : " + iVo);
		return iDao.insertPension(iVo);
	}
	
	public int updateOpt(HostIntroduceVo iVo) {
		System.out.println("Service ㅎㅇ");
		return iDao.updateOpt(iVo);
	}
	
	
	
	
}