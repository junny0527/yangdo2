package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.HostCompanyregDao;
import com.javaex.vo.HostCompanyregVo;

@Service
public class HostCompanyregService {
	
	@Autowired
	private HostCompanyregDao cregDao;
	
	public String getEmail(String id) {
		HostCompanyregVo cVo = cregDao.getEmail(id);
		String email = cVo.getEmail();
		return email;
	}

	public int insertCompany(HostCompanyregVo cVo) {
		
		String phone1 = cVo.getPhone1();
		String phone2 = cVo.getPhone2();
		String phone3 = cVo.getPhone3();
		String tel1 = cVo.getTel1();
		String tel2 = cVo.getTel2();
		String tel3 = cVo.getTel3();
		
		String ceoNo = phone1 + "-" + phone2 + "-" + phone3;
		String companyNo = tel1 + "-" + tel2 + "-" + tel3;
		String removeNull = "";
		int[] removeArray = {};
		
		cVo.setCeoHp(ceoNo);
		cVo.setCompanyHp(companyNo);
		
		if(cVo.getBankName().equals("없음")) {
			cVo.setBankName(removeNull);
			cVo.setAccountHolder(removeNull);
			cVo.setAccount(removeNull);
			cVo.setSettlementCycle(removeNull);
		}
		
		
		if(cVo.getTaxInvoice() == 2) {
			int[] btArray = cVo.getBusinessTypeArrays();
			int[] bgArray = cVo.getBusinessGroupArrays();
			
			for(int i=0; i<btArray.length; i++) {
				cregDao.insertBTArray(btArray[i]);
			}
			
			for(int i=0; i<bgArray.length; i++) {
				cregDao.insertBGArray(bgArray[i]);
			}
			
		}else {
			cVo.setCompanyName(removeNull);
			cVo.setCeoName(removeNull);
			cVo.setBusinessLicensenumber(removeNull);
			cVo.setCompanyAddress(removeNull);
			cVo.setDetailAddress(removeNull);
			cVo.setTaxInvoiceEmail(removeNull);
			cVo.setPostalCode(removeNull);
			cVo.setBusinessTypeArrays(removeArray);
			cVo.setBusinessGroupArrays(removeArray);
		}
		
		if(cVo.getHomepage() == null) {
			cVo.setHomepage(removeNull);
		}
		
		System.out.println("service cVo : " + cVo);
		
		int count = cregDao.insertCompany(cVo);
		return count;
	}
	
	
}
