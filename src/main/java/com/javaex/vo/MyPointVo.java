package com.javaex.vo;

import java.util.Date;

public class MyPointVo {

	private int no;
	private int point;
	private String regDate;
	private int resNo;
	private int userNo;
	private int roomNo;
	private String pName;

	public MyPointVo() {
		super();
	}

	
	public MyPointVo(int no, int point, String regDate, int resNo, int userNo, int roomNo, String pName) {
		super();
		this.no = no;
		this.point = point;
		this.regDate = regDate;
		this.resNo = resNo;
		this.userNo = userNo;
		this.roomNo = roomNo;
		this.pName = pName;
	}


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	
	

	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public int getResNo() {
		return resNo;
	}

	public void setResNo(int resNo) {
		this.resNo = resNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	@Override
	public String toString() {
		return "MyPointVo [no=" + no + ", point=" + point + ", regDate=" + regDate + ", resNo=" + resNo + ", userNo="
				+ userNo + ", roomNo=" + roomNo + ", pName=" + pName + "]";
	}

}
