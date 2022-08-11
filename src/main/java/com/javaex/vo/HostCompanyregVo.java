package com.javaex.vo;

public class HostCompanyregVo {
	
	private String email;
	private String companyHp;
	private String ceoHp;
	private String bankName;
	private String accountHolder;
	private String account;
	private String settlementCycle;
	private String taxInvoice;
	private String companyName;
	private String ceoName;
	private String businessLicensenumber;
	private String postalCode;
	private String companyAddress;
	private String detailAddress;
	private String homepage;
	private String taxInvoiceEmail;
	
	public HostCompanyregVo() {};
	
	public HostCompanyregVo(String email, String companyHp, String ceoHp, String bankName, String accountHolder,
			String account, String settlementCycle, String taxInvoice, String companyName, String ceoName,
			String businessLicensenumber, String postalCode, String companyAddress, String detailAddress,
			String homepage, String taxInvoiceEmail) {
		this.email = email;
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
		this.postalCode = postalCode;
		this.companyAddress = companyAddress;
		this.detailAddress = detailAddress;
		this.homepage = homepage;
		this.taxInvoiceEmail = taxInvoiceEmail;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getTaxInvoice() {
		return taxInvoice;
	}

	public void setTaxInvoice(String taxInvoice) {
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

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
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

	@Override
	public String toString() {
		return "CompanyregVo [email=" + email + ", companyHp=" + companyHp + ", ceoHp=" + ceoHp + ", bankName="
				+ bankName + ", accountHolder=" + accountHolder + ", account=" + account + ", settlementCycle="
				+ settlementCycle + ", taxInvoice=" + taxInvoice + ", companyName=" + companyName + ", ceoName="
				+ ceoName + ", businessLicensenumber=" + businessLicensenumber + ", postalCode=" + postalCode
				+ ", companyAddress=" + companyAddress + ", detailAddress=" + detailAddress + ", homepage=" + homepage
				+ ", taxInvoiceEmail=" + taxInvoiceEmail + "]";
	}
	
	
}
