package com.javaex.vo;

public class PointsVo {
	
	private int no;
	private int reserveNo;
	private String point;
	private String regDate;
	
	
	public PointsVo() {
		super();
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public int getReserveNo() {
		return reserveNo;
	}


	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}


	public String getPoint() {
		return point;
	}


	public void setPoint(String point) {
		this.point = point;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	@Override
	public String toString() {
		return "PointsVo [no=" + no + ", reserveNo=" + reserveNo + ", point=" + point + ", regDate=" + regDate + "]";
	}
	
	
	
	

}
