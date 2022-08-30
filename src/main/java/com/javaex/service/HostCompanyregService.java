package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public int getCompanyNoBySession(int userNo) {
		return cregDao.getCompanyNoBySession(userNo);
	}
	
	public Map<String, Object> getCompanyinfo(int userNo, String email) {
		
		Map<String, Object> cMap = new HashMap<>();
		
		HostCompanyregVo oldCompany = cregDao.getCompanyinfo(userNo);
		oldCompany.setEmail(email);
		
		String[] phoneSplit = oldCompany.getCeoHp().split("-");
		String[] companySplit = oldCompany.getCompanyHp().split("-");
		
		System.out.println(phoneSplit[0] + "+" + phoneSplit[1] + "+" +  phoneSplit[2]);
		oldCompany.setPhone1(phoneSplit[0]);
		oldCompany.setPhone2(phoneSplit[1]);
		oldCompany.setPhone3(phoneSplit[2]);
		oldCompany.setTel1(companySplit[0]);
		oldCompany.setTel2(companySplit[1]);
		oldCompany.setTel3(companySplit[2]);
		
		int companyNo = cregDao.getCompanyNoBySession(userNo);
		System.out.println("list service : " + companyNo);
		
		List<HostCompanyregVo> btype = cregDao.getBusinesstype(companyNo);
		List<HostCompanyregVo> bgroup = cregDao.getBusinessgroup(companyNo);
		
		System.out.println(btype);
		System.out.println(bgroup);
		
		cMap.put("cVo", oldCompany);
		cMap.put("btype", btype);
		cMap.put("bgroup", bgroup);
		
		return cMap;
	}
	
	
	
}
