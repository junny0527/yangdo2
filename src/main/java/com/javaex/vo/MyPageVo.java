package com.javaex.vo;

public class MyPageVo {

	// field
	// 예약내역 //
	private int reservationNo;
	private String status;
	private String pensionName;
	private String checkIn;
	private String checkOut;
	private int pImgNo;
	private int pensionNo;
	private long pImgPath;
	private int pImgOrders;
	private int noDays;
	///////////////////////////////////
	// 예약상세 //
	private int userNo;
	private String roomName;
	private int standardPeople;
	private int maxPeople;
	private String name;
	private String hp;
	private String totalPrice;
	private int additionalPrice;
	private String transPrice;
	private String discountPrice;
	private int adultPrice;
	private int kidPrice;
	private int babyPrice;
	private String payStatus;
	private String regDate;
	private String prNo;
	private String companyHp;
	///////////////////////////////////
	// 이용완료 리뷰 //
	private int revNo;
	private String revTitle;
	private int stars;
	private long revImg1;
	private long revImg2;
	private String revContent;
	private String revRegDate;
	private String repContent;
	private String repRegDate;
	private int repNo;
	private String ownerNo;
	//////////////////////////////////
	// 내정보 //
	private String id;
	private String pw;
	private String nickName;
	private String email;
	private String identify;
	/////////////////////////////////
	// 포인트 //
	private int poNo;
	private String point;
	private String poRegDate;

	// constructors
	public MyPageVo() {
		super();
	}

	public MyPageVo(int reservationNo, String status, String pensionName, String checkIn, String checkOut, int pImgNo,
			int pensionNo, long pImgPath, int pImgOrders, int noDays, int userNo) {
		super();
		this.reservationNo = reservationNo;
		this.status = status;
		this.pensionName = pensionName;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.pImgNo = pImgNo;
		this.pensionNo = pensionNo;
		this.pImgPath = pImgPath;
		this.pImgOrders = pImgOrders;
		this.noDays = noDays;
		this.userNo = userNo;
	}

	public MyPageVo(int reservationNo, String status, String pensionName, String checkIn, String checkOut, int pImgNo,
			int pensionNo, long pImgPath, int pImgOrders, int noDays, int userNo, String roomName, int standardPeople,
			int maxPeople, String name, String hp, String totalPrice, String additionalPrice, String transPrice,
			String discountPrice, int adultPrice, int kidPrice, int babyPrice, String payStatus, String regDate,
			String prNo, String companyHp, int revNo, String revTitle, int stars, long revImg1, long revImg2,
			String revContent, String revRegDate, String repContent, String repRegDate, int repNo, String ownerNo,
			String id, String pw, String nickName, String email, String identify, int poNo, String point,
			String poRegDate) {
		super();
		this.reservationNo = reservationNo;
		this.status = status;
		this.pensionName = pensionName;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
		this.pImgNo = pImgNo;
		this.pensionNo = pensionNo;
		this.pImgPath = pImgPath;
		this.pImgOrders = pImgOrders;
		this.noDays = noDays;
		this.userNo = userNo;
		this.roomName = roomName;
		this.standardPeople = standardPeople;
		this.maxPeople = maxPeople;
		this.name = name;
		this.hp = hp;
		this.totalPrice = totalPrice;
		this.additionalPrice = this.adultPrice + this.kidPrice + this.babyPrice;
		this.transPrice = transPrice;
		this.discountPrice = discountPrice;
		this.adultPrice = adultPrice;
		this.kidPrice = kidPrice;
		this.babyPrice = babyPrice;
		this.payStatus = payStatus;
		this.regDate = regDate;
		this.prNo = prNo;
		this.companyHp = companyHp;
		this.revNo = revNo;
		this.revTitle = revTitle;
		this.stars = stars;
		this.revImg1 = revImg1;
		this.revImg2 = revImg2;
		this.revContent = revContent;
		this.revRegDate = revRegDate;
		this.repContent = repContent;
		this.repRegDate = repRegDate;
		this.repNo = repNo;
		this.ownerNo = ownerNo;
		this.id = id;
		this.pw = pw;
		this.nickName = nickName;
		this.email = email;
		this.identify = identify;
		this.poNo = poNo;
		this.point = point;
		this.poRegDate = poRegDate;
	}

	// method - g/s

	public int getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPensionName() {
		return pensionName;
	}

	public void setPensionName(String pensionName) {
		this.pensionName = pensionName;
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

	public int getpImgNo() {
		return pImgNo;
	}

	public void setpImgNo(int pImgNo) {
		this.pImgNo = pImgNo;
	}

	public int getPensionNo() {
		return pensionNo;
	}

	public void setPensionNo(int pensionNo) {
		this.pensionNo = pensionNo;
	}

	public long getpImgPath() {
		return pImgPath;
	}

	public void setpImgPath(long pImgPath) {
		this.pImgPath = pImgPath;
	}

	public int getpImgOrders() {
		return pImgOrders;
	}

	public void setpImgOrders(int pImgOrders) {
		this.pImgOrders = pImgOrders;
	}

	public int getNoDays() {
		return noDays;
	}

	public void setNoDays(int noDays) {
		this.noDays = noDays;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public int getStandardPeople() {
		return standardPeople;
	}

	public void setStandardPeople(int standardPeople) {
		this.standardPeople = standardPeople;
	}

	public int getMaxPeople() {
		return maxPeople;
	}

	public void setMaxPeople(int maxPeople) {
		this.maxPeople = maxPeople;
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

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getAdditionalPrice() {
		return additionalPrice;
	}

	public void setAdditionalPrice(int additionalPrice) {
		this.additionalPrice = additionalPrice;
	}

	public String getTransPrice() {
		return transPrice;
	}

	public void setTransPrice(String transPrice) {
		this.transPrice = transPrice;
	}

	public String getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(String discountPrice) {
		this.discountPrice = discountPrice;
	}

	public int getAdultPrice() {
		return adultPrice;
	}

	public void setAdultPrice(int adultPrice) {
		this.adultPrice = adultPrice;
	}

	public int getKidPrice() {
		return kidPrice;
	}

	public void setKidPrice(int kidPrice) {
		this.kidPrice = kidPrice;
	}

	public int getBabyPrice() {
		return babyPrice;
	}

	public void setBabyPrice(int babyPrice) {
		this.babyPrice = babyPrice;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
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

	public String getCompanyHp() {
		return companyHp;
	}

	public void setCompanyHp(String companyHp) {
		this.companyHp = companyHp;
	}

	public int getRevNo() {
		return revNo;
	}

	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}

	public String getRevTitle() {
		return revTitle;
	}

	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}

	public int getStars() {
		return stars;
	}

	public void setStars(int stars) {
		this.stars = stars;
	}

	public long getRevImg1() {
		return revImg1;
	}

	public void setRevImg1(long revImg1) {
		this.revImg1 = revImg1;
	}

	public long getRevImg2() {
		return revImg2;
	}

	public void setRevImg2(long revImg2) {
		this.revImg2 = revImg2;
	}

	public String getRevContent() {
		return revContent;
	}

	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}

	public String getRevRegDate() {
		return revRegDate;
	}

	public void setRevRegDate(String revRegDate) {
		this.revRegDate = revRegDate;
	}

	public String getRepContent() {
		return repContent;
	}

	public void setRepContent(String repContent) {
		this.repContent = repContent;
	}

	public String getRepRegDate() {
		return repRegDate;
	}

	public void setRepRegDate(String repRegDate) {
		this.repRegDate = repRegDate;
	}

	public int getRepNo() {
		return repNo;
	}

	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}

	public String getOwnerNo() {
		return ownerNo;
	}

	public void setOwnerNo(String ownerNo) {
		this.ownerNo = ownerNo;
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

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIdentify() {
		return identify;
	}

	public void setIdentify(String identify) {
		this.identify = identify;
	}

	public int getPoNo() {
		return poNo;
	}

	public void setPoNo(int poNo) {
		this.poNo = poNo;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}

	public String getPoRegDate() {
		return poRegDate;
	}

	public void setPoRegDate(String poRegDate) {
		this.poRegDate = poRegDate;
	}

	@Override
	public String toString() {
		return "MyPageVo [reservationNo=" + reservationNo + ", status=" + status + ", pensionName=" + pensionName
				+ ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", pImgNo=" + pImgNo + ", pensionNo=" + pensionNo
				+ ", pImgPath=" + pImgPath + ", pImgOrders=" + pImgOrders + ", noDays=" + noDays + ", userNo=" + userNo
				+ ", roomName=" + roomName + ", standardPeople=" + standardPeople + ", maxPeople=" + maxPeople
				+ ", name=" + name + ", hp=" + hp + ", totalPrice=" + totalPrice + ", additionalPrice="
				+ additionalPrice + ", transPrice=" + transPrice + ", discountPrice=" + discountPrice + ", adultPrice="
				+ adultPrice + ", kidPrice=" + kidPrice + ", babyPrice=" + babyPrice + ", payStatus=" + payStatus
				+ ", regDate=" + regDate + ", prNo=" + prNo + ", companyHp=" + companyHp + ", revNo=" + revNo
				+ ", revTitle=" + revTitle + ", stars=" + stars + ", revImg1=" + revImg1 + ", revImg2=" + revImg2
				+ ", revContent=" + revContent + ", revRegDate=" + revRegDate + ", repContent=" + repContent
				+ ", repRegDate=" + repRegDate + ", repNo=" + repNo + ", ownerNo=" + ownerNo + ", id=" + id + ", pw="
				+ pw + ", nickName=" + nickName + ", email=" + email + ", identify=" + identify + ", poNo=" + poNo
				+ ", point=" + point + ", poRegDate=" + poRegDate + "]";
	}

}
