package com.javaex.vo;

public class PriceVo {

	private int no;
	private int roomNo;
	private int price;
	private int sortation;
	private int divide;

	public PriceVo() {
		super();
	}

	public PriceVo(int no, int roomNo, int price, int sortation, int divide) {
		super();
		this.no = no;
		this.roomNo = roomNo;
		this.price = price;
		this.sortation = sortation;
		this.divide = divide;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getSortation() {
		return sortation;
	}

	public void setSortation(int sortation) {
		this.sortation = sortation;
	}

	public int getDivide() {
		return divide;
	}

	public void setDivide(int divide) {
		this.divide = divide;
	}

	@Override
	public String toString() {
		return "PriceVo [no=" + no + ", roomNo=" + roomNo + ", price=" + price + ", sortation=" + sortation
				+ ", divide=" + divide + "]";
	}

}
