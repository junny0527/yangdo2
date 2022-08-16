package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostCompanyregDao;
import com.javaex.vo.HostCompanyregVo;

@Service
public class HostCompanyregService {
	
	@Autowired
	private HostCompanyregDao cregDao;
	
	public String getEmail(int userNo) {
		return cregDao.getEmail(userNo);
	}

	public int insertCompany(HostCompanyregVo cVo) {
		
		String phone1 = cVo.getPhone1();
		String phone2 = cVo.getPhone2();
		String phone3 = cVo.getPhone3();
		String tel1 = cVo.getTel1();
		String tel2 = cVo.getTel2();
		String tel3 = cVo.getTel3();
		
		String ceoHp = phone1 + "-" + phone2 + "-" + phone3;
		String companyHp = tel1 + "-" + tel2 + "-" + tel3;
		
		cVo.setCeoHp(ceoHp);
		cVo.setCompanyHp(companyHp);
		
		System.out.println("ceoHp: " + cVo.getCeoHp());
		System.out.println("companyHp: " + cVo.getCompanyHp());
		
		/*
		cregDao.insertCompany(cVo);
		int companyNo = cregDao.getCompanyNo();
		System.out.println("companyNo : " + companyNo);
		*/
		
		if(cVo.getTaxInvoice() == 2) {
			
			cregDao.insertcompanyTaxInvoice(cVo);
			int companyNo = cregDao.getCompanyNo();
			System.out.println("getCompanyNo : " + companyNo);
			cVo.setCompanyNo(companyNo);
			
			int[] btArray = cVo.getBusinessTypeArrays();
			int[] bgArray = cVo.getBusinessGroupArrays();
			
			for(int i=0; i<btArray.length; i++) {
				cVo.setBusinessType(btArray[i]);
				cregDao.insertBTArray(cVo);
			}
			
			for(int i=0; i<bgArray.length; i++) {
				cVo.setBusinessGroup(bgArray[i]);
				cregDao.insertBGArray(cVo);
			}
		}else {
			cregDao.insertCompany(cVo);
		}
		
		return 1;
	}
		
	
}
