package com.javaex.vo;

public class MainListVo {

	private String pName;
	private String lawName;
	private int lawCode;
	private String visitRoad3;
	private String saveName;
	private int penPrice;
	private int stars;
	private String status;
	private int pNo;
	private String rCount;
	private String gugunName;
	private String amOpt;
	private String puOpt;
	private int yCount;

	public MainListVo() {
		super();

	}

	
	public MainListVo(String pName, String lawName, int lawCode, String visitRoad3, String saveName, int penPrice,
			int stars, String status, int pNo, String rCount, String gugunName, String amOpt, String puOpt,
			int yCount) {
		super();
		this.pName = pName;
		this.lawName = lawName;
		this.lawCode = lawCode;
		this.visitRoad3 = visitRoad3;
		this.saveName = saveName;
		this.penPrice = penPrice;
		this.stars = stars;
		this.status = status;
		this.pNo = pNo;
		this.rCount = rCount;
		this.gugunName = gugunName;
		this.amOpt = amOpt;
		this.puOpt = puOpt;
		this.yCount = yCount;
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


	@Override
	public String toString() {
		return "MainListVo [pName=" + pName + ", lawName=" + lawName + ", lawCode=" + lawCode + ", visitRoad3="
				+ visitRoad3 + ", saveName=" + saveName + ", penPrice=" + penPrice + ", stars=" + stars + ", status="
				+ status + ", pNo=" + pNo + ", rCount=" + rCount + ", gugunName=" + gugunName + ", amOpt=" + amOpt
				+ ", puOpt=" + puOpt + ", yCount=" + yCount + "]";
	}

	
}
