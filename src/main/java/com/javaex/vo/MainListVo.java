package com.javaex.vo;

public class MainListVo {
	
	private String pName;
	private String lawName;
	private int lawCode;
	private String visitRoad3;
	private String imagePath;
	private int penPrice;
	private int stars;
	private String status;
	
	
	public MainListVo() {
		super();
	}


	


	public MainListVo(String pName, String lawName, int lawCode, String visitRoad3, String imagePath, int penPrice,
			int stars, String status) {
		super();
		this.pName = pName;
		this.lawName = lawName;
		this.lawCode = lawCode;
		this.visitRoad3 = visitRoad3;
		this.imagePath = imagePath;
		this.penPrice = penPrice;
		this.stars = stars;
		this.status = status;
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


	public String getImagePath() {
		return imagePath;
	}


	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
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





	@Override
	public String toString() {
		return "MainListVo [pName=" + pName + ", lawName=" + lawName + ", lawCode=" + lawCode + ", visitRoad3="
				+ visitRoad3 + ", imagePath=" + imagePath + ", penPrice=" + penPrice + ", stars=" + stars + ", status="
				+ status + "]";
	}


	
	
	
	
}
