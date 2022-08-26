package com.javaex.vo;

import java.util.Arrays;

public class HostIntroduceVo {
	
	private int companyNo;
	private int pensionNo;
	private String pensionName;
	private String postalCode;
	private String pensionAddress;
	private String detailAddress;
	private String lawCode;
	private String lawName;
	private String sido;
	private String gugun;
	private String visitRoad1;
	private String visitRoad2;
	private String visitRoad3;
	private String areaInfo1;
	private String areaInfo2;
	private String areaInfo3;
	private String rules;
	private String livePay;
	private String parkingInfo;
	private String etc;
	
	private String[] publicArrays;
	private String[] amenitiesArrays;
	private String publics;
	private String amanities;
	
	public HostIntroduceVo() {}

	public HostIntroduceVo(int companyNo, int pensionNo, String pensionName, String postalCode, String pensionAddress,
			String detailAddress, String lawCode, String lawName, String sido, String gugun, String visitRoad1,
			String visitRoad2, String visitRoad3, String areaInfo1, String areaInfo2, String areaInfo3, String rules,
			String livePay, String parkingInfo, String etc, String[] publicArrays, String[] amenitiesArrays,
			String publics, String amanities) {
		this.companyNo = companyNo;
		this.pensionNo = pensionNo;
		this.pensionName = pensionName;
		this.postalCode = postalCode;
		this.pensionAddress = pensionAddress;
		this.detailAddress = detailAddress;
		this.lawCode = lawCode;
		this.lawName = lawName;
		this.sido = sido;
		this.gugun = gugun;
		this.visitRoad1 = visitRoad1;
		this.visitRoad2 = visitRoad2;
		this.visitRoad3 = visitRoad3;
		this.areaInfo1 = areaInfo1;
		this.areaInfo2 = areaInfo2;
		this.areaInfo3 = areaInfo3;
		this.rules = rules;
		this.livePay = livePay;
		this.parkingInfo = parkingInfo;
		this.etc = etc;
		this.publicArrays = publicArrays;
		this.amenitiesArrays = amenitiesArrays;
		this.publics = publics;
		this.amanities = amanities;
	}

	public int getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}

	public int getPensionNo() {
		return pensionNo;
	}

	public void setPensionNo(int pensionNo) {
		this.pensionNo = pensionNo;
	}

	public String getPensionName() {
		return pensionName;
	}

	public void setPensionName(String pensionName) {
		this.pensionName = pensionName;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getPensionAddress() {
		return pensionAddress;
	}

	public void setPensionAddress(String pensionAddress) {
		this.pensionAddress = pensionAddress;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getLawCode() {
		return lawCode;
	}

	public void setLawCode(String lawCode) {
		this.lawCode = lawCode;
	}

	public String getLawName() {
		return lawName;
	}

	public void setLawName(String lawName) {
		this.lawName = lawName;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getGugun() {
		return gugun;
	}

	public void setGugun(String gugun) {
		this.gugun = gugun;
	}

	public String getVisitRoad1() {
		return visitRoad1;
	}

	public void setVisitRoad1(String visitRoad1) {
		this.visitRoad1 = visitRoad1;
	}

	public String getVisitRoad2() {
		return visitRoad2;
	}

	public void setVisitRoad2(String visitRoad2) {
		this.visitRoad2 = visitRoad2;
	}

	public String getVisitRoad3() {
		return visitRoad3;
	}

	public void setVisitRoad3(String visitRoad3) {
		this.visitRoad3 = visitRoad3;
	}

	public String getAreaInfo1() {
		return areaInfo1;
	}

	public void setAreaInfo1(String areaInfo1) {
		this.areaInfo1 = areaInfo1;
	}

	public String getAreaInfo2() {
		return areaInfo2;
	}

	public void setAreaInfo2(String areaInfo2) {
		this.areaInfo2 = areaInfo2;
	}

	public String getAreaInfo3() {
		return areaInfo3;
	}

	public void setAreaInfo3(String areaInfo3) {
		this.areaInfo3 = areaInfo3;
	}

	public String getRules() {
		return rules;
	}

	public void setRules(String rules) {
		this.rules = rules;
	}

	public String getLivePay() {
		return livePay;
	}

	public void setLivePay(String livePay) {
		this.livePay = livePay;
	}

	public String getParkingInfo() {
		return parkingInfo;
	}

	public void setParkingInfo(String parkingInfo) {
		this.parkingInfo = parkingInfo;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public String[] getPublicArrays() {
		return publicArrays;
	}

	public void setPublicArrays(String[] publicArrays) {
		this.publicArrays = publicArrays;
	}

	public String[] getAmenitiesArrays() {
		return amenitiesArrays;
	}

	public void setAmenitiesArrays(String[] amenitiesArrays) {
		this.amenitiesArrays = amenitiesArrays;
	}

	public String getPublics() {
		return publics;
	}

	public void setPublics(String publics) {
		this.publics = publics;
	}

	public String getAmanities() {
		return amanities;
	}

	public void setAmanities(String amanities) {
		this.amanities = amanities;
	}

	@Override
	public String toString() {
		return "HostIntroduceVo [companyNo=" + companyNo + ", pensionNo=" + pensionNo + ", pensionName=" + pensionName
				+ ", postalCode=" + postalCode + ", pensionAddress=" + pensionAddress + ", detailAddress="
				+ detailAddress + ", lawCode=" + lawCode + ", lawName=" + lawName + ", sido=" + sido + ", gugun="
				+ gugun + ", visitRoad1=" + visitRoad1 + ", visitRoad2=" + visitRoad2 + ", visitRoad3=" + visitRoad3
				+ ", areaInfo1=" + areaInfo1 + ", areaInfo2=" + areaInfo2 + ", areaInfo3=" + areaInfo3 + ", rules="
				+ rules + ", livePay=" + livePay + ", parkingInfo=" + parkingInfo + ", etc=" + etc + ", publicArrays="
				+ Arrays.toString(publicArrays) + ", amenitiesArrays=" + Arrays.toString(amenitiesArrays) + ", publics="
				+ publics + ", amanities=" + amanities + "]";
	}

}
