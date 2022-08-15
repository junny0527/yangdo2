package com.javaex.vo;

import java.util.Date;

public class MyListVo {

	// field
	public int no; // 유저번호
	public int resNo; // 예약번호
	public String status; // 예약상태
	public String pName; // 펜션이름
	public String checkIn; // 체크인
	public String checkOut; // 체크아웃
	public Long imgPath; // 이미지경로
	public Date regDate; // 등록일

	public MyListVo() {
	}

	public MyListVo(int no, int resNo, String status, String pName, String checkIn, String checkOut, Long imgPath,
			Date regDate) {
		super();
		this.no = no;
		this.resNo = resNo;
		this.status = status;
		this.pName = pName;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.imgPath = imgPath;
		this.regDate = regDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getResNo() {
		return resNo;
	}

	public void setResNo(int resNo) {
		this.resNo = resNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public Long getImgPath() {
		return imgPath;
	}

	public void setImgPath(Long imgPath) {
		this.imgPath = imgPath;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "MyListVo [no=" + no + ", resNo=" + resNo + ", status=" + status + ", pName=" + pName + ", checkIn="
				+ checkIn + ", checkOut=" + checkOut + ", imgPath=" + imgPath + ", regDate=" + regDate + "]";
	}

}