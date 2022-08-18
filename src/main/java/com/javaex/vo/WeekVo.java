package com.javaex.vo;

public class WeekVo {

	private int no;
	private int priceNo;
	private String weekName;
	
	public WeekVo() {
		super();
	}

	public WeekVo(int no, int priceNo, String weekName) {
		super();
		this.no = no;
		this.priceNo = priceNo;
		this.weekName = weekName;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPriceNo() {
		return priceNo;
	}

	public void setPriceNo(int priceNo) {
		this.priceNo = priceNo;
	}

	public String getWeekName() {
		return weekName;
	}

	public void setWeekName(String weekName) {
		this.weekName = weekName;
	}

	@Override
	public String toString() {
		return "WeekVo [no=" + no + ", priceNo=" + priceNo + ", weekName=" + weekName + "]";
	}

	
	
}
