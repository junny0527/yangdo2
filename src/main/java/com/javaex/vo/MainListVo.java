package com.javaex.vo;

public class MainListVo {

	private String pName;
	private String lawName;
	private int lawCode;
	private String visitRoad3;
	private String saveName;
	private int penPrice;
	private String penCPrice;
	private int stars;
	private String status;
	private int pNo;
	private String rCount;
	private String gugunName;
	private String amOpt;
	private String puOpt;
	private int yCount;
	private int persons;
	private String datepicker;
	private String datepicker2;
	private String address;
	
	public MainListVo() {
		super();
		
		this.persons = 2;
	}

	public MainListVo(String pName, String lawName, int lawCode, String visitRoad3, String saveName, int penPrice,
			String penCPrice, int stars, String status, int pNo, String rCount, String gugunName, String amOpt,
			String puOpt, int yCount, int persons, String datepicker, String datepicker2, String address) {
		super();
		this.pName = pName;
		this.lawName = lawName;
		this.lawCode = lawCode;
		this.visitRoad3 = visitRoad3;
		this.saveName = saveName;
		this.penPrice = penPrice;
		this.penCPrice = penCPrice;
		this.stars = stars;
		this.status = status;
		this.pNo = pNo;
		this.rCount = rCount;
		this.gugunName = gugunName;
		this.amOpt = amOpt;
		this.puOpt = puOpt;
		this.yCount = yCount;
		this.persons = persons;
		this.datepicker = datepicker;
		this.datepicker2 = datepicker2;
		this.address = address;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getLawName() {
		return lawName;
	}

	public void setLawName(String lawName) {
		this.lawName = lawName;
	}

	public int getLawCode() {
		return lawCode;
	}

	public void setLawCode(int lawCode) {
		this.lawCode = lawCode;
	}

	public String getVisitRoad3() {
		return visitRoad3;
	}

	public void setVisitRoad3(String visitRoad3) {
		this.visitRoad3 = visitRoad3;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	public int getPenPrice() {
		return penPrice;
	}

	public void setPenPrice(int penPrice) {
		this.penPrice = penPrice;
	}

	public String getPenCPrice() {
		return penCPrice;
	}

	public void setPenCPrice(String penCPrice) {
		this.penCPrice = penCPrice;
	}

	public int getStars() {
		return stars;
	}

	public void setStars(int stars) {
		this.stars = stars;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getrCount() {
		return rCount;
	}

	public void setrCount(String rCount) {
		this.rCount = rCount;
	}

	public String getGugunName() {
		return gugunName;
	}

	public void setGugunName(String gugunName) {
		this.gugunName = gugunName;
	}

	public String getAmOpt() {
		return amOpt;
	}

	public void setAmOpt(String amOpt) {
		this.amOpt = amOpt;
	}

	public String getPuOpt() {
		return puOpt;
	}

	public void setPuOpt(String puOpt) {
		this.puOpt = puOpt;
	}

	public int getyCount() {
		return yCount;
	}

	public void setyCount(int yCount) {
		this.yCount = yCount;
	}

	public int getPersons() {
		return persons;
	}

	public void setPersons(int persons) {
		this.persons = persons;
	}

	public String getDatepicker() {
		return datepicker;
	}

	public void setDatepicker(String datepicker) {
		this.datepicker = datepicker;
	}

	public String getDatepicker2() {
		return datepicker2;
	}

	public void setDatepicker2(String datepicker2) {
		this.datepicker2 = datepicker2;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "MainListVo [pName=" + pName + ", lawName=" + lawName + ", lawCode=" + lawCode + ", visitRoad3="
				+ visitRoad3 + ", saveName=" + saveName + ", penPrice=" + penPrice + ", penCPrice=" + penCPrice
				+ ", stars=" + stars + ", status=" + status + ", pNo=" + pNo + ", rCount=" + rCount + ", gugunName="
				+ gugunName + ", amOpt=" + amOpt + ", puOpt=" + puOpt + ", yCount=" + yCount + ", persons=" + persons
				+ ", datepicker=" + datepicker + ", datepicker2=" + datepicker2 + ", address=" + address + "]";
	}

	
	
	

	
	
}
