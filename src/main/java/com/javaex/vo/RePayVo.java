package com.javaex.vo;

public class RePayVo {
	private int no;
	private int userNo;
	private int roomNo;
	private int pointNo;
	private String point;
	private String name;
	private String hp;
	private String checkInDt;
	private String checkOutDt;
	private String checkInHr;
	private String checkOutHr;
	private String pName;
	private String rName;
	private int adult;
	private int kid;
	private int baby;
	private String totalPrice;
	private String transPrice;
	private String paySatatus;
	private int status;
	private String payWay;
	private String payStatus;
	private String regDate;
	private int prNo;
	private String id;
	private String pw;
	
	
	
	
	public RePayVo() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public int getPointNo() {
		return pointNo;
	}

	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}

	public String getPoint() {
		return point;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getCheckInDt() {
		return checkInDt;
	}

	public void setCheckInDt(String checkInDt) {
		this.checkInDt = checkInDt;
	}

	public String getCheckOutDt() {
		return checkOutDt;
	}

	public void setCheckOutDt(String checkOutDt) {
		this.checkOutDt = checkOutDt;
	}

	public String getCheckInHr() {
		return checkInHr;
	}

	public void setCheckInHr(String checkInHr) {
		this.checkInHr = checkInHr;
	}

	public String getCheckOutHr() {
		return checkOutHr;
	}

	public void setCheckOutHr(String checkOutHr) {
		this.checkOutHr = checkOutHr;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getKid() {
		return kid;
	}

	public void setKid(int kid) {
		this.kid = kid;
	}

	public int getBaby() {
		return baby;
	}

	public void setBaby(int baby) {
		this.baby = baby;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getTransPrice() {
		return transPrice;
	}

	public void setTransPrice(String transPrice) {
		this.transPrice = transPrice;
	}

	public String getPayWay() {
		return payWay;
	}

	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getPrNo() {
		return prNo;
	}

	public void setPrNo(int prNo) {
		this.prNo = prNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPaySatatus() {
		return paySatatus;
	}

	public void setPaySatatus(String paySatatus) {
		this.paySatatus = paySatatus;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "RePayVo [no=" + no + ", userNo=" + userNo + ", roomNo=" + roomNo + ", pointNo=" + pointNo + ", point="
				+ point + ", name=" + name + ", hp=" + hp + ", checkInDt=" + checkInDt + ", checkOutDt=" + checkOutDt
				+ ", checkInHr=" + checkInHr + ", checkOutHr=" + checkOutHr + ", pName=" + pName + ", rName=" + rName
				+ ", adult=" + adult + ", kid=" + kid + ", baby=" + baby + ", totalPrice=" + totalPrice
				+ ", transPrice=" + transPrice + ", paySatatus=" + paySatatus + ", status=" + status + ", payWay="
				+ payWay + ", payStatus=" + payStatus + ", regDate=" + regDate + ", prNo=" + prNo + ", id=" + id
				+ ", pw=" + pw + "]";
	}
}
