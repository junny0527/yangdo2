package com.javaex.vo;

public class PensionImageVo {
	private int no;
	private int pensionNo;
	private String saveName;
	private String imagePath;
	private int orders;

	public PensionImageVo() {
		super();
	}

	public PensionImageVo(int no, int pensionNo, String saveName, String imagePath, int orders) {
		super();
		this.no = no;
		this.pensionNo = pensionNo;
		this.saveName = saveName;
		this.imagePath = imagePath;
		this.orders = orders;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPensionNo() {
		return pensionNo;
	}

	public void setPensionNo(int pensionNo) {
		this.pensionNo = pensionNo;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public int getOrders() {
		return orders;
	}

	public void setOrders(int orders) {
		this.orders = orders;
	}

	public String getSaveName() {
		return saveName;
	}

	public void setSaveName(String saveName) {
		this.saveName = saveName;
	}

	@Override
	public String toString() {
		return "PensionImageVo [no=" + no + ", pensionNo=" + pensionNo + ", saveName=" + saveName + ", imagePath="
				+ imagePath + ", orders=" + orders + "]";
	}

}
