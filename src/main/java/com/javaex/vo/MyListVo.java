package com.javaex.vo;

import java.util.Date;

public class MyListVo {

	// field
	private int no; // 유저번호
	private int resNo; // 예약번호
	private int pNo; // 펜션번호
	private String point; // 포인트
	private String status; // 예약상태
	private String pName; // 펜션이름
	private String inDate; // 체크인 일자
	private String outDate; // 체크아웃 일자
	private String checkIn; // 체크인 일자
	private String checkOut; // 체크아웃 일자
	private String inTime; // 체크인 시간
	private String outTime; // 체크아웃 시간
	private String saveName; // 이미지경로
	private Date regDate; // 등록일
	////////////////////////////////
	private String rName; // 방이름
	private int sPple; // 기본인원
	private int mPple; // 최대인원
	private String name; // 예약자이름
	private String nickName; // 유저닉네임
	private String hp; // 예약자핸드폰
	private int totalP; // 총금액 (int)
	private int transP; // 양도가격 (int)
	private String tPrice; // 총금액
	private String trPrice; // 양도가격
	private int adultP; // 어른추가금액(int)
	private int kidP; // 아이추가금액(int)
	private int babyP; // 아동추가금액 (int)
	private String addPrice; // 추가금액
	private String orgPrice; // 기존금액 (예약내역)
	private String initPrice; // 기존금액 (취소내역)
	private int initialP; // 기존금액 (int)
	private int addP; // 추가금액 (int)
	private int refNo; // 환불번호
	private String comHp; // 회사번호
	private int pRno; // 부모예약번호
	private int revNo; // 부모예약번호
	private int check; // 부모예약번호
	//////////////////////////////

	public MyListVo() {
	}

	public MyListVo(int no, int resNo, int pNo, String point, String status, String pName, String inDate,
			String outDate, String checkIn, String checkOut, String inTime, String outTime, String saveName,
			Date regDate, String rName, int sPple, int mPple, String name, String nickName, String hp, int totalP,
			int transP, String tPrice, String trPrice, int adultP, int kidP, int babyP, String addPrice,
			String orgPrice, String initPrice, int initialP, int addP, int refNo, String comHp, int pRno, int revNo,
			int check) {
		super();
		this.no = no;
		this.resNo = resNo;
		this.pNo = pNo;
		this.point = point;
		this.status = status;
		this.pName = pName;
		this.inDate = inDate;
		this.outDate = outDate;
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
		this.totalP = totalP;
		this.transP = transP;
		this.tPrice = tPrice;
		this.trPrice = trPrice;
		this.adultP = adultP;
		this.kidP = kidP;
		this.babyP = babyP;
		this.addPrice = addPrice;
		this.orgPrice = orgPrice;
		this.initPrice = initPrice;
		this.initialP = initialP;
		this.addP = addP;
		this.refNo = refNo;
		this.comHp = comHp;
		this.pRno = pRno;
		this.revNo = revNo;
		this.check = check;
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

	public String getInDate() {
		return inDate;
	}

	public void setInDate(String inDate) {
		this.inDate = inDate;
	}

	public String getOutDate() {
		return outDate;
	}

	public void setOutDate(String outDate) {
		this.outDate = outDate;
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

	public int getTotalP() {
		return totalP;
	}

	public void setTotalP(int totalP) {
		this.totalP = totalP;
	}

	public int getTransP() {
		return transP;
	}

	public void setTransP(int transP) {
		this.transP = transP;
	}

	public String gettPrice() {
		return tPrice;
	}

	public void settPrice(String tPrice) {
		this.tPrice = tPrice;
	}

	public String getTrPrice() {
		return trPrice;
	}

	public void setTrPrice(String trPrice) {
		this.trPrice = trPrice;
	}

	public int getAdultP() {
		return adultP;
	}

	public void setAdultP(int adultP) {
		this.adultP = adultP;
	}

	public int getKidP() {
		return kidP;
	}

	public void setKidP(int kidP) {
		this.kidP = kidP;
	}

	public int getBabyP() {
		return babyP;
	}

	public void setBabyP(int babyP) {
		this.babyP = babyP;
	}

	public String getAddPrice() {
		return addPrice;
	}

	public void setAddPrice(String addPrice) {
		this.addPrice = addPrice;
	}

	public String getOrgPrice() {
		return orgPrice;
	}

	public void setOrgPrice(String orgPrice) {
		this.orgPrice = orgPrice;
	}

	public String getInitPrice() {
		return initPrice;
	}

	public void setInitPrice(String initPrice) {
		this.initPrice = initPrice;
	}

	public int getInitialP() {
		return initialP;
	}

	public void setInitialP(int initialP) {
		this.initialP = initialP;
	}

	public int getAddP() {
		return addP;
	}

	public void setAddP(int addP) {
		this.addP = addP;
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

	public int getRevNo() {
		return revNo;
	}

	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}

	public int getCheck() {
		return check;
	}

	public void setCheck(int check) {
		this.check = check;
	}

	@Override
	public String toString() {
		return "MyListVo [no=" + no + ", resNo=" + resNo + ", pNo=" + pNo + ", point=" + point + ", status=" + status
				+ ", pName=" + pName + ", inDate=" + inDate + ", outDate=" + outDate + ", checkIn=" + checkIn
				+ ", checkOut=" + checkOut + ", inTime=" + inTime + ", outTime=" + outTime + ", saveName=" + saveName
				+ ", regDate=" + regDate + ", rName=" + rName + ", sPple=" + sPple + ", mPple=" + mPple + ", name="
				+ name + ", nickName=" + nickName + ", hp=" + hp + ", totalP=" + totalP + ", transP=" + transP
				+ ", tPrice=" + tPrice + ", trPrice=" + trPrice + ", adultP=" + adultP + ", kidP=" + kidP + ", babyP="
				+ babyP + ", addPrice=" + addPrice + ", orgPrice=" + orgPrice + ", initPrice=" + initPrice
				+ ", initialP=" + initialP + ", addP=" + addP + ", refNo=" + refNo + ", comHp=" + comHp + ", pRno="
				+ pRno + ", revNo=" + revNo + ", check=" + check + "]";
	}

}