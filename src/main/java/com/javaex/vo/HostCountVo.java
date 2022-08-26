package com.javaex.vo;

public class HostCountVo {
	
	private String weekFirst;
	private String weekLast;
	private String monthFirst;
	private String monthLast;
	private int reviewToday;
	private int reviewWeek;
	private int reviewMonth;
	private int saleToday;
	private int saleWeek;
	private int saleMonth;
	private int pensionNo;
	
	public HostCountVo() {}

	public HostCountVo(String weekFirst, String weekLast, String monthFirst, String monthLast, int reviewToday,
			int reviewWeek, int reviewMonth, int saleToday, int saleWeek, int saleMonth, int pensionNo) {
		this.weekFirst = weekFirst;
		this.weekLast = weekLast;
		this.monthFirst = monthFirst;
		this.monthLast = monthLast;
		this.reviewToday = reviewToday;
		this.reviewWeek = reviewWeek;
		this.reviewMonth = reviewMonth;
		this.saleToday = saleToday;
		this.saleWeek = saleWeek;
		this.saleMonth = saleMonth;
		this.pensionNo = pensionNo;
	}

	public String getWeekFirst() {
		return weekFirst;
	}

	public void setWeekFirst(String weekFirst) {
		this.weekFirst = weekFirst;
	}

	public String getWeekLast() {
		return weekLast;
	}

	public void setWeekLast(String weekLast) {
		this.weekLast = weekLast;
	}

	public String getMonthFirst() {
		return monthFirst;
	}

	public void setMonthFirst(String monthFirst) {
		this.monthFirst = monthFirst;
	}

	public String getMonthLast() {
		return monthLast;
	}

	public void setMonthLast(String monthLast) {
		this.monthLast = monthLast;
	}

	public int getReviewToday() {
		return reviewToday;
	}

	public void setReviewToday(int reviewToday) {
		this.reviewToday = reviewToday;
	}

	public int getReviewWeek() {
		return reviewWeek;
	}

	public void setReviewWeek(int reviewWeek) {
		this.reviewWeek = reviewWeek;
	}

	public int getReviewMonth() {
		return reviewMonth;
	}

	public void setReviewMonth(int reviewMonth) {
		this.reviewMonth = reviewMonth;
	}

	public int getSaleToday() {
		return saleToday;
	}

	public void setSaleToday(int saleToday) {
		this.saleToday = saleToday;
	}

	public int getSaleWeek() {
		return saleWeek;
	}

	public void setSaleWeek(int saleWeek) {
		this.saleWeek = saleWeek;
	}

	public int getSaleMonth() {
		return saleMonth;
	}

	public void setSaleMonth(int saleMonth) {
		this.saleMonth = saleMonth;
	}

	public int getPensionNo() {
		return pensionNo;
	}

	public void setPensionNo(int pensionNo) {
		this.pensionNo = pensionNo;
	}

	@Override
	public String toString() {
		return "HostCountVo [weekFirst=" + weekFirst + ", weekLast=" + weekLast + ", monthFirst=" + monthFirst
				+ ", monthLast=" + monthLast + ", reviewToday=" + reviewToday + ", reviewWeek=" + reviewWeek
				+ ", reviewMonth=" + reviewMonth + ", saleToday=" + saleToday + ", saleWeek=" + saleWeek
				+ ", saleMonth=" + saleMonth + ", pensionNo=" + pensionNo + "]";
	}

}
