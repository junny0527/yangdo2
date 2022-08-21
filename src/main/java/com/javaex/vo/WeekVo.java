package com.javaex.vo;

public class WeekVo {

	private int no;
	private int roomNo;
	private int priceNo;
	private String weekName;
	private int price;

	public WeekVo() {
		super();
	}

	public WeekVo(int no, int roomNo, int priceNo, String weekName, int price) {
		super();
		this.no = no;
		this.roomNo = roomNo;
		this.priceNo = priceNo;
		this.weekName = weekName;
		this.price = price;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	@Override
	public String toString() {
		return "WeekVo [no=" + no + ", roomNo=" + roomNo + ", priceNo=" + priceNo + ", weekName=" + weekName
				+ ", price=" + price + "]";
	}

}
