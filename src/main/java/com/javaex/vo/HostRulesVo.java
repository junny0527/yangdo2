package com.javaex.vo;

import java.util.Arrays;

public class HostRulesVo {
	
	private int pensionNo;
	private String checkin;
	private String checkout;
	private int addAdultPrice;
	private int addKidPrice;
	private int addBabyPrice;
	private int refundNo;
	
	private String[] peckStartArray;
	private String[] peckEndArray;
	private String[] subpeckStartArray;
	private String[] subpeckEndArray;
	private String peckStart;
	private String peckEnd;
	private String subpeckStart;
	private String subpeckEnd;
	
	private int peckNo;
	
	
	public HostRulesVo() {}


	public HostRulesVo(String peckStart, String peckEnd) {
		this.peckStart = peckStart;
		this.peckEnd = peckEnd;
	}
	
	public HostRulesVo(int pensionNo, String checkin, String checkout, int addAdultPrice, int addKidPrice,
			int addBabyPrice, int refundNo, String[] peckStartArray, String[] peckEndArray, String[] subpeckStartArray,
			String[] subpeckEndArray, String peckStart, String peckEnd, String subpeckStart, String subpeckEnd,
			int peckNo) {
		this.pensionNo = pensionNo;
		this.checkin = checkin;
		this.checkout = checkout;
		this.addAdultPrice = addAdultPrice;
		this.addKidPrice = addKidPrice;
		this.addBabyPrice = addBabyPrice;
		this.refundNo = refundNo;
		this.peckStartArray = peckStartArray;
		this.peckEndArray = peckEndArray;
		this.subpeckStartArray = subpeckStartArray;
		this.subpeckEndArray = subpeckEndArray;
		this.peckStart = peckStart;
		this.peckEnd = peckEnd;
		this.subpeckStart = subpeckStart;
		this.subpeckEnd = subpeckEnd;
		this.peckNo = peckNo;
	}


	public int getPensionNo() {
		return pensionNo;
	}


	public void setPensionNo(int pensionNo) {
		this.pensionNo = pensionNo;
	}


	public String getCheckin() {
		return checkin;
	}


	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}


	public String getCheckout() {
		return checkout;
	}


	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}


	public int getAddAdultPrice() {
		return addAdultPrice;
	}


	public void setAddAdultPrice(int addAdultPrice) {
		this.addAdultPrice = addAdultPrice;
	}


	public int getAddKidPrice() {
		return addKidPrice;
	}


	public void setAddKidPrice(int addKidPrice) {
		this.addKidPrice = addKidPrice;
	}


	public int getAddBabyPrice() {
		return addBabyPrice;
	}


	public void setAddBabyPrice(int addBabyPrice) {
		this.addBabyPrice = addBabyPrice;
	}


	public int getRefundNo() {
		return refundNo;
	}


	public void setRefundNo(int refundNo) {
		this.refundNo = refundNo;
	}


	public String[] getPeckStartArray() {
		return peckStartArray;
	}


	public void setPeckStartArray(String[] peckStartArray) {
		this.peckStartArray = peckStartArray;
	}


	public String[] getPeckEndArray() {
		return peckEndArray;
	}


	public void setPeckEndArray(String[] peckEndArray) {
		this.peckEndArray = peckEndArray;
	}


	public String[] getSubpeckStartArray() {
		return subpeckStartArray;
	}


	public void setSubpeckStartArray(String[] subpeckStartArray) {
		this.subpeckStartArray = subpeckStartArray;
	}


	public String[] getSubpeckEndArray() {
		return subpeckEndArray;
	}


	public void setSubpeckEndArray(String[] subpeckEndArray) {
		this.subpeckEndArray = subpeckEndArray;
	}


	public String getPeckStart() {
		return peckStart;
	}


	public void setPeckStart(String peckStart) {
		this.peckStart = peckStart;
	}


	public String getPeckEnd() {
		return peckEnd;
	}


	public void setPeckEnd(String peckEnd) {
		this.peckEnd = peckEnd;
	}


	public String getSubpeckStart() {
		return subpeckStart;
	}


	public void setSubpeckStart(String subpeckStart) {
		this.subpeckStart = subpeckStart;
	}


	public String getSubpeckEnd() {
		return subpeckEnd;
	}


	public void setSubpeckEnd(String subpeckEnd) {
		this.subpeckEnd = subpeckEnd;
	}


	public int getPeckNo() {
		return peckNo;
	}


	public void setPeckNo(int peckNo) {
		this.peckNo = peckNo;
	}


	@Override
	public String toString() {
		return "HostRulesVo [pensionNo=" + pensionNo + ", checkin=" + checkin + ", checkout=" + checkout
				+ ", addAdultPrice=" + addAdultPrice + ", addKidPrice=" + addKidPrice + ", addBabyPrice=" + addBabyPrice
				+ ", refundNo=" + refundNo + ", peckStartArray=" + Arrays.toString(peckStartArray) + ", peckEndArray="
				+ Arrays.toString(peckEndArray) + ", subpeckStartArray=" + Arrays.toString(subpeckStartArray)
				+ ", subpeckEndArray=" + Arrays.toString(subpeckEndArray) + ", peckStart=" + peckStart + ", peckEnd="
				+ peckEnd + ", subpeckStart=" + subpeckStart + ", subpeckEnd=" + subpeckEnd + ", peckNo=" + peckNo
				+ "]";
	}


}
