package com.javaex.vo;

import java.util.Arrays;

public class HostCompanyregVo {
	
	private int userNo;
	private int companyNo;
	private String email;
	private String phone1;
	private String phone2;
	private String phone3;
	private String tel1;
	private String tel2;
	private String tel3;
	private String companyHp;
	private String ceoHp;
	private String bankName;
	private String accountHolder;
	private String account;
	private String settlementCycle;
	private int taxInvoice;
	private String companyName;
	private String ceoName;
	private String businessLicensenumber;
	private String companyAddress;
	private String detailAddress;
	private String homepage;
	private String taxInvoiceEmail;
	private String postalCode;
	
	private int[] businessTypeArrays;
	private int[] businessGroupArrays;
	private int businessType;
	private int businessGroup;
	
	public HostCompanyregVo() {}

	public HostCompanyregVo(int userNo, int companyNo, String email, String phone1, String phone2, String phone3,
			String tel1, String tel2, String tel3, String companyHp, String ceoHp, String bankName,
			String accountHolder, String account, String settlementCycle, int taxInvoice, String companyName,
			String ceoName, String businessLicensenumber, String companyAddress, String detailAddress, String homepage,
			String taxInvoiceEmail, String postalCode, int[] businessTypeArrays, int[] businessGroupArrays,
			int businessType, int businessGroup) {
		this.userNo = userNo;
		this.companyNo = companyNo;
		this.email = email;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.companyHp = companyHp;
		this.ceoHp = ceoHp;
		this.bankName = bankName;
		this.accountHolder = accountHolder;
		this.account = account;
		this.settlementCycle = settlementCycle;
		this.taxInvoice = taxInvoice;
		this.companyName = companyName;
		this.ceoName = ceoName;
		this.businessLicensenumber = businessLicensenumber;
		this.companyAddress = companyAddress;
		this.detailAddress = detailAddress;
		this.homepage = homepage;
		this.taxInvoiceEmail = taxInvoiceEmail;
		this.postalCode = postalCode;
		this.businessTypeArrays = businessTypeArrays;
		this.businessGroupArrays = businessGroupArrays;
		this.businessType = businessType;
		this.businessGroup = businessGroup;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	public String getCompanyHp() {
		return companyHp;
	}

	public void setCompanyHp(String companyHp) {
		this.companyHp = companyHp;
	}

	public String getCeoHp() {
		return ceoHp;
	}

	public void setCeoHp(String ceoHp) {
		this.ceoHp = ceoHp;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountHolder() {
		return accountHolder;
	}

	public void setAccountHolder(String accountHolder) {
		this.accountHolder = accountHolder;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getSettlementCycle() {
		return settlementCycle;
	}

	public void setSettlementCycle(String settlementCycle) {
		this.settlementCycle = settlementCycle;
	}

	public int getTaxInvoice() {
		return taxInvoice;
	}

	public void setTaxInvoice(int taxInvoice) {
		this.taxInvoice = taxInvoice;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getBusinessLicensenumber() {
		return businessLicensenumber;
	}

	public void setBusinessLicensenumber(String businessLicensenumber) {
		this.businessLicensenumber = businessLicensenumber;
	}

	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getTaxInvoiceEmail() {
		return taxInvoiceEmail;
	}

	public void setTaxInvoiceEmail(String taxInvoiceEmail) {
		this.taxInvoiceEmail = taxInvoiceEmail;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public int[] getBusinessTypeArrays() {
		return businessTypeArrays;
	}

	public void setBusinessTypeArrays(int[] businessTypeArrays) {
		this.businessTypeArrays = businessTypeArrays;
	}

	public int[] getBusinessGroupArrays() {
		return businessGroupArrays;
	}

	public void setBusinessGroupArrays(int[] businessGroupArrays) {
		this.businessGroupArrays = businessGroupArrays;
	}

	public int getBusinessType() {
		return businessType;
	}

	public void setBusinessType(int businessType) {
		this.businessType = businessType;
	}

	public int getBusinessGroup() {
		return businessGroup;
	}

	public void setBusinessGroup(int businessGroup) {
		this.businessGroup = businessGroup;
	}

	@Override
	public String toString() {
		return "HostCompanyregVo [userNo=" + userNo + ", companyNo=" + companyNo + ", email=" + email + ", phone1="
				+ phone1 + ", phone2=" + phone2 + ", phone3=" + phone3 + ", tel1=" + tel1 + ", tel2=" + tel2 + ", tel3="
				+ tel3 + ", companyHp=" + companyHp + ", ceoHp=" + ceoHp + ", bankName=" + bankName + ", accountHolder="
				+ accountHolder + ", account=" + account + ", settlementCycle=" + settlementCycle + ", taxInvoice="
				+ taxInvoice + ", companyName=" + companyName + ", ceoName=" + ceoName + ", businessLicensenumber="
				+ businessLicensenumber + ", companyAddress=" + companyAddress + ", detailAddress=" + detailAddress
				+ ", homepage=" + homepage + ", taxInvoiceEmail=" + taxInvoiceEmail + ", postalCode=" + postalCode
				+ ", businessTypeArrays=" + Arrays.toString(businessTypeArrays) + ", businessGroupArrays="
				+ Arrays.toString(businessGroupArrays) + ", businessType=" + businessType + ", businessGroup="
				+ businessGroup + "]";
	}


}
