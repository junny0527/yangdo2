package com.javaex.vo;

public class RePayVo {
	private int no;
	private int userNo;
	private int roomNo;
	private int pointNo;
	private String point;
	private String userName;
	private String userHp;
	private String checkIn;
	private String checkOut;
	private String pName;
	private String rName;
	private String sPeople;
	private String mPeople;
	private int refundNo;
	private int adult;
	private int kid;
	private int baby;
	private int totalPrice;
	private int transPrice;
	private String payWay;
	private String regDate;
	private int prNo;
	
	
	public RePayVo() {
		super();
	}


	public RePayVo(int no, int userNo, int roomNo, int pointNo, String point, String userName, String userHp,
			String checkIn, String checkOut, String pName, String rName, String sPeople, String mPeople, int refundNo,
			int adult, int kid, int baby, int totalPrice, int transPrice, String payWay, String regDate, int prNo) {
		super();
		this.no = no;
		this.userNo = userNo;
		this.roomNo = roomNo;
		this.pointNo = pointNo;
		this.point = point;
		this.userName = userName;
		this.userHp = userHp;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.pName = pName;
		this.rName = rName;
		this.sPeople = sPeople;
		this.mPeople = mPeople;
		this.refundNo = refundNo;
		this.adult = adult;
		this.kid = kid;
		this.baby = baby;
		this.totalPrice = totalPrice;
		this.transPrice = transPrice;
		this.payWay = payWay;
		this.regDate = regDate;
		this.prNo = prNo;
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


	public void setPoint(String point) {
		this.point = point;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserHp() {
		return userHp;
	}


	public void setUserHp(String userHp) {
		this.userHp = userHp;
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


	public String getsPeople() {
		return sPeople;
	}


	public void setsPeople(String sPeople) {
		this.sPeople = sPeople;
	}


	public String getmPeople() {
		return mPeople;
	}


	public void setmPeople(String mPeople) {
		this.mPeople = mPeople;
	}


	public int getRefundNo() {
		return refundNo;
	}


	public void setRefundNo(int refundNo) {
		this.refundNo = refundNo;
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


	public int getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}


	public int getTransPrice() {
		return transPrice;
	}


	public void setTransPrice(int transPrice) {
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


	@Override
	public String toString() {
		return "RePayVo [no=" + no + ", userNo=" + userNo + ", roomNo=" + roomNo + ", pointNo=" + pointNo + ", point="
				+ point + ", userName=" + userName + ", userHp=" + userHp + ", checkIn=" + checkIn + ", checkOut="
				+ checkOut + ", pName=" + pName + ", rName=" + rName + ", sPeople=" + sPeople + ", mPeople=" + mPeople
				+ ", refundNo=" + refundNo + ", adult=" + adult + ", kid=" + kid + ", baby=" + baby + ", totalPrice="
				+ totalPrice + ", transPrice=" + transPrice + ", payWay=" + payWay + ", regDate=" + regDate + ", prNo="
				+ prNo + "]";
	}


	
	
	
}
