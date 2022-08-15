package com.javaex.vo;

import java.util.Arrays;

public class HostRulesVo {
	
	private String checkin;
	private String checkout;
	private int addAdultPrice;
	private int addKidPrice;
	private int addBabyPrice;
	private int refundNo;
	private String[] peakStart;
	private String[] peakEnd;
	private String[] subpeakStart;
	private String[] subpeakEnd;
	
	public HostRulesVo() {}
	
	public HostRulesVo(String checkin, String checkout, int addAdultPrice, int addKidPrice, int addBabyPrice,
			int refundNo, String[] peakStart, String[] peakEnd, String[] subpeakStart, String[] subpeakEnd) {
		this.checkin = checkin;
		this.checkout = checkout;
		this.addAdultPrice = addAdultPrice;
		this.addKidPrice = addKidPrice;
		this.addBabyPrice = addBabyPrice;
		this.refundNo = refundNo;
		this.peakStart = peakStart;
		this.peakEnd = peakEnd;
		this.subpeakStart = subpeakStart;
		this.subpeakEnd = subpeakEnd;
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


	public String[] getPeakStart() {
		return peakStart;
	}


	public void setPeakStart(String[] peakStart) {
		this.peakStart = peakStart;
	}


	public String[] getPeakEnd() {
		return peakEnd;
	}


	public void setPeakEnd(String[] peakEnd) {
		this.peakEnd = peakEnd;
	}


	public String[] getSubpeakStart() {
		return subpeakStart;
	}


	public void setSubpeakStart(String[] subpeakStart) {
		this.subpeakStart = subpeakStart;
	}


	public String[] getSubpeakEnd() {
		return subpeakEnd;
	}


	public void setSubpeakEnd(String[] subpeakEnd) {
		this.subpeakEnd = subpeakEnd;
	}

	@Override
	public String toString() {
		return "HostRulesVo [checkin=" + checkin + ", checkout=" + checkout + ", addAdultPrice=" + addAdultPrice
				+ ", addKidPrice=" + addKidPrice + ", addBabyPrice=" + addBabyPrice + ", refundNo=" + refundNo
				+ ", peakStart=" + Arrays.toString(peakStart) + ", peakEnd=" + Arrays.toString(peakEnd)
				+ ", subpeakStart=" + Arrays.toString(subpeakStart) + ", subpeakEnd=" + Arrays.toString(subpeakEnd)
				+ "]";
	}

}
