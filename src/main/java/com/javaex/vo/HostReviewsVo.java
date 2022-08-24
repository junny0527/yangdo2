package com.javaex.vo;

public class HostReviewsVo {
	
	private int reviewNo;
	private int replyNo;
	private int reserveNo;
	private double stars;
	private String title;
	private String roomName;
	private String guestName;
	private String image1;
	private String image2;
	private String guestContent;
	private String guestRegdate;
	private String hostContent;
	private String hostRegdate;
	
	
	public HostReviewsVo() {}

	public HostReviewsVo(int reviewNo, int replyNo, int reserveNo, double stars, String title, String roomName,
			String guestName, String image1, String image2, String guestContent, String guestRegdate,
			String hostContent, String hostRegdate) {
		this.reviewNo = reviewNo;
		this.replyNo = replyNo;
		this.reserveNo = reserveNo;
		this.stars = stars;
		this.title = title;
		this.roomName = roomName;
		this.guestName = guestName;
		this.image1 = image1;
		this.image2 = image2;
		this.guestContent = guestContent;
		this.guestRegdate = guestRegdate;
		this.hostContent = hostContent;
		this.hostRegdate = hostRegdate;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getReserveNo() {
		return reserveNo;
	}

	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}

	public double getStars() {
		return stars;
	}

	public void setStars(double stars) {
		this.stars = stars;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getGuestContent() {
		return guestContent;
	}

	public void setGuestContent(String guestContent) {
		this.guestContent = guestContent;
	}

	public String getGuestRegdate() {
		return guestRegdate;
	}

	public void setGuestRegdate(String guestRegdate) {
		this.guestRegdate = guestRegdate;
	}

	public String getHostContent() {
		return hostContent;
	}

	public void setHostContent(String hostContent) {
		this.hostContent = hostContent;
	}

	public String getHostRegdate() {
		return hostRegdate;
	}

	public void setHostRegdate(String hostRegdate) {
		this.hostRegdate = hostRegdate;
	}

	@Override
	public String toString() {
		return "HostReviewsVo [reviewNo=" + reviewNo + ", replyNo=" + replyNo + ", reserveNo=" + reserveNo + ", stars="
				+ stars + ", title=" + title + ", roomName=" + roomName + ", guestName=" + guestName + ", image1="
				+ image1 + ", image2=" + image2 + ", guestContent=" + guestContent + ", guestRegdate=" + guestRegdate
				+ ", hostContent=" + hostContent + ", hostRegdate=" + hostRegdate + "]";
	}

}
