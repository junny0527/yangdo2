package com.javaex.vo;

import java.util.Date;

public class MyListVo {

	// field
	public int no; // 유저번호
	public int resNo; // 예약번호
	public int pNo; // 펜션번호
	public String point; // 포인트
	public String status; // 예약상태
	public String pName; // 펜션이름
	public String checkIn; // 체크인 일자
	public String checkOut; // 체크아웃 일자
	public String inTime; // 체크인 시간
	public String outTime; // 체크아웃 시간
	public String saveName; // 이미지경로
	public Date regDate; // 등록일
	////////////////////////////////
	public String rName; // 방이름
	public int sPple; // 기본인원
	public int mPple; // 최대인원
	public String name; // 예약자이름
	public String nickName; // 유저닉네임
	public String hp; // 예약자핸드폰
	public String tPrice; // 총금액
	public int trPrice; // 양도가격
	public String pStatus; // 결제상태
	public int refNo; // 환불번호
	public String comHp; // 회사번호
	public int pRno; // 부모예약번호

	public MyListVo() {
	}

	public MyListVo(int no, int resNo, int pNo, String point, String status, String pName, String checkIn,
			String checkOut, String inTime, String outTime, String saveName, Date regDate, String rName, int sPple,
			int mPple, String name, String nickName, String hp, String tPrice, int trPrice, String pStatus, int refNo,
			String comHp, int pRno) {
		super();
		this.no = no;
		this.resNo = resNo;
		this.pNo = pNo;
		this.point = point;
		this.status = status;
		this.pName = pName;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.inTime = inTime;
		this.outTime = outTime;
		this.saveName = saveName;
		this.regDate = regDate;
		this.rName = rName;
		this.sPple = sPple;
		this.mPple = mPple;
		this.name = name;
		this.nickName = nickName;
		this.hp = hp;
		this.tPrice = tPrice;
		this.trPrice = trPrice;
		this.pStatus = pStatus;
		this.refNo = refNo;
		this.comHp = comHp;
		this.pRno = pRno;
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

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
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

	public String getInTime() {
		return inTime;
	}

	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	public String getOutTime() {
		return outTime;
	}

	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public int getsPple() {
		return sPple;
	}

	public void setsPple(int sPple) {
		this.sPple = sPple;
	}

	public int getmPple() {
		return mPple;
	}

	public void setmPple(int mPple) {
		this.mPple = mPple;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String gettPrice() {
		return tPrice;
	}

	public void settPrice(String tPrice) {
		this.tPrice = tPrice;
	}

	public int getTrPrice() {
		return trPrice;
	}

	public void setTrPrice(int trPrice) {
		this.trPrice = trPrice;
	}

	public String getpStatus() {
		return pStatus;
	}

	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}

	public int getRefNo() {
		return refNo;
	}

	public void setRefNo(int refNo) {
		this.refNo = refNo;
	}

	public String getComHp() {
		return comHp;
	}

	public void setComHp(String comHp) {
		this.comHp = comHp;
	}

	public int getpRno() {
		return pRno;
	}

	public void setpRno(int pRno) {
		this.pRno = pRno;
	}

	@Override
	public String toString() {
		return "MyListVo [no=" + no + ", resNo=" + resNo + ", pNo=" + pNo + ", point=" + point + ", status=" + status
				+ ", pName=" + pName + ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", inTime=" + inTime
				+ ", outTime=" + outTime + ", saveName=" + saveName + ", regDate=" + regDate + ", rName=" + rName
				+ ", sPple=" + sPple + ", mPple=" + mPple + ", name=" + name + ", nickName=" + nickName + ", hp=" + hp
				+ ", tPrice=" + tPrice + ", trPrice=" + trPrice + ", pStatus=" + pStatus + ", refNo=" + refNo
				+ ", comHp=" + comHp + ", pRno=" + pRno + "]";
	}

}