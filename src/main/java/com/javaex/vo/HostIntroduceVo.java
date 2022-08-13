package com.javaex.vo;

import java.util.Arrays;

public class HostIntroduceVo {
	
	private int companyNo;
	private String pensionName;
	private String postalCode;
	private String pensionAddress;
	private String detailAddress;
	private String lawCode;
	private String lawName;
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
	private int[] publicArrays;
	private int[] amenitiesArrays;
	
	public HostIntroduceVo() {}

	public HostIntroduceVo(int companyNo, String pensionName, String postalCode, String pensionAddress,
			String detailAddress, String lawCode, String lawName, String visitRoad1, String visitRoad2,
			String visitRoad3, String areaInfo1, String areaInfo2, String areaInfo3, String rules, String livePay,
			String parkingInfo, String etc, int[] publicArrays, int[] amenitiesArrays) {
		this.companyNo = companyNo;
		this.pensionName = pensionName;
		this.postalCode = postalCode;
		this.pensionAddress = pensionAddress;
		this.detailAddress = detailAddress;
		this.lawCode = lawCode;
		this.lawName = lawName;
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
	}

	public int getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
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

	public int[] getPublicArrays() {
		return publicArrays;
	}

	public void setPublicArrays(int[] publicArrays) {
		this.publicArrays = publicArrays;
	}

	public int[] getAmenitiesArrays() {
		return amenitiesArrays;
	}

	public void setAmenitiesArrays(int[] amenitiesArrays) {
		this.amenitiesArrays = amenitiesArrays;
	}

	@Override
	public String toString() {
		return "HostIntroduceVo [companyNo=" + companyNo + ", pensionName=" + pensionName + ", postalCode=" + postalCode
				+ ", pensionAddress=" + pensionAddress + ", detailAddress=" + detailAddress + ", lawCode=" + lawCode
				+ ", lawName=" + lawName + ", visitRoad1=" + visitRoad1 + ", visitRoad2=" + visitRoad2 + ", visitRoad3="
				+ visitRoad3 + ", areaInfo1=" + areaInfo1 + ", areaInfo2=" + areaInfo2 + ", areaInfo3=" + areaInfo3
				+ ", rules=" + rules + ", livePay=" + livePay + ", parkingInfo=" + parkingInfo + ", etc=" + etc
				+ ", publicArrays=" + Arrays.toString(publicArrays) + ", amenitiesArrays="
				+ Arrays.toString(amenitiesArrays) + "]";
	}

}
