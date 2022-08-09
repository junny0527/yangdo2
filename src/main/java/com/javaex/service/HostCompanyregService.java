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
	
	
	public int insertCompany(HostCompanyregVo cVo, String phone1, String phone2, String phone3, String tel1, String tel2, String tel3) {
		
		String ceoNo = phone1 + "-" + phone2 + "-" + phone3;
		String companyNo = tel1 + "-" + tel2 + "-" + tel3;
		String removeNull = "";
		
		cVo.setCeoHp(ceoNo);
		cVo.setCompanyHp(companyNo);
		
		if(cVo.getBankName().equals("없음")) {
			cVo.setBankName(removeNull);
			cVo.setAccountHolder(removeNull);
			cVo.setAccount(removeNull);
			cVo.setSettlementCycle(removeNull);
		}
		
		if(cVo.getTaxInvoice() == 1) {
			cVo.setCompanyName(removeNull);
			cVo.setCeoName(removeNull);
			cVo.setBusinessLicensenumber(0);
			cVo.setPostalCode(removeNull);
			cVo.setCompanyAddress(removeNull);
			cVo.setDetailAddress(removeNull);
			cVo.setTaxInvoiceEmail(removeNull);
		}
		
		if(cVo.getHomepage() == null) {
			cVo.setHomepage(removeNull);
		}
		
		System.out.println(cVo);
		
		int count = cregDao.insertCompany(cVo);
		
		return count;
	}
	
	
}
