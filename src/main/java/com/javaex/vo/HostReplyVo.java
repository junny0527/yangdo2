package com.javaex.vo;

public class HostReplyVo {
	
	private int reviewNo;
	private String hostContent;
	private String hostRegdate;
	
	public HostReplyVo() {}
	
	public HostReplyVo(int reviewNo, String hostContent, String hostRegdate) {
		this.reviewNo = reviewNo;
		this.hostContent = hostContent;
		this.hostRegdate = hostRegdate;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
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
		return "HostReplyVo [reviewNo=" + reviewNo + ", hostContent=" + hostContent + ", hostRegdate=" + hostRegdate
				+ "]";
	}
	
	
}
