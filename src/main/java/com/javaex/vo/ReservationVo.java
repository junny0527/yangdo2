package com.javaex.vo;

public class ReservationVo {
	
	//필드
	private int no;
	private int roomNo;
	private int userNo;
	private String userName;
	private String userHp;
	private String checkIn;
	private String checkOut;
	private int adult;
	private int kid;
	private int baby;
	private String payWay;
	private String payStatus;
	private String Status;
	private String totalPrice;
	private String transPrice;
	private int trans_Price;
	private String regDate;
	private String prNo;
	//생성자
	public ReservationVo() {
		super();
	}
	public ReservationVo(int no, int roomNo, int userNo, String userName, String userHp, String checkIn,
			String checkOut, int adult, int kid, int baby, String payWay, String payStatus, String status,
			String totalPrice, String transPrice, int trans_Price, String regDate, String prNo) {
		super();
		this.no = no;
		this.roomNo = roomNo;
		this.userNo = userNo;
		this.userName = userName;
		this.userHp = userHp;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.adult = adult;
		this.kid = kid;
		this.baby = baby;
		this.payWay = payWay;
		this.payStatus = payStatus;
		Status = status;
		this.totalPrice = totalPrice;
		this.transPrice = transPrice;
		this.trans_Price = trans_Price;
		this.regDate = regDate;
		this.prNo = prNo;
	}

	//메소드 gs
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	public String getPayWay() {
		return payWay;
	}
	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}
	public String getPayStatus() {
		return payStatus;
	}
	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
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
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getPrNo() {
		return prNo;
	}
	public void setPrNo(String prNo) {
		this.prNo = prNo;
	}
	
	public int getTrans_Price() {
		return trans_Price;
	}
	public void setTrans_Price(int trans_Price) {
		this.trans_Price = trans_Price;
	}
	//메소드 일반
	@Override
	public String toString() {
		return "ReservationVo [no=" + no + ", roomNo=" + roomNo + ", userNo=" + userNo + ", userName=" + userName
				+ ", userHp=" + userHp + ", checkIn=" + checkIn + ", checkOut=" + checkOut 
				+ ", adult=" + adult + ", kid=" + kid + ", baby=" + baby + ", payWay=" + payWay + ", payStatus="
				+ payStatus + ", Status=" + Status + ", totalPrice=" + totalPrice + ", transPrice=" + transPrice
				+ ", regDate=" + regDate + ", prNo=" + prNo + "]";
	}


}
