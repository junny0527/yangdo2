package com.javaex.vo;

import java.util.List;

public class HostRoomsVo {

	// 필드
	private int no;
	private int userNo;
	private int pensionNo;
	private String roomName;
	private int standardPeople;
	private int maxPeople;
	private String roomAmenities;
	private String addInfo;
	private String reserveAvai;

	// 파일 리스트
	private List<String> imgfile;

	// 기본 비수기1
	private int gbNo1;
	private int gbPrice1;
	private List<String> gbWeeks1;

	// 기본 비수기2
	private int gbNo2;
	private int gbPrice2;
	private List<String> gbWeeks2;

	// 준성수기
	private int jsNo1;
	private int jsPrice1;
	private List<String> jsWeeks1;

	// 준성수기 2
	private int jsNo2;
	private int jsPrice2;
	private List<String> jsWeeks2;

	// 성수기1
	private int sNo1;
	private int sPrice1;
	private List<String> sWeeks1;
	// 성수기2
	private int sNo2;
	private int sPrice2;
	private List<String> sWeeks2;

	// 생성자
	public HostRoomsVo() {
		super();
	}

	public HostRoomsVo(int no, int userNo, int pensionNo, String roomName, int standardPeople, int maxPeople,
			String roomAmenities, String addInfo, String reserveAvai, List<String> imgfile, int gbNo1, int gbPrice1,
			List<String> gbWeeks1, int gbNo2, int gbPrice2, List<String> gbWeeks2, int jsNo1, int jsPrice1,
			List<String> jsWeeks1, int jsNo2, int jsPrice2, List<String> jsWeeks2, int sNo1, int sPrice1,
			List<String> sWeeks1, int sNo2, int sPrice2, List<String> sWeeks2) {
		super();
		this.no = no;
		this.userNo = userNo;
		this.pensionNo = pensionNo;
		this.roomName = roomName;
		this.standardPeople = standardPeople;
		this.maxPeople = maxPeople;
		this.roomAmenities = roomAmenities;
		this.addInfo = addInfo;
		this.reserveAvai = reserveAvai;
		this.imgfile = imgfile;
		this.gbNo1 = gbNo1;
		this.gbPrice1 = gbPrice1;
		this.gbWeeks1 = gbWeeks1;
		this.gbNo2 = gbNo2;
		this.gbPrice2 = gbPrice2;
		this.gbWeeks2 = gbWeeks2;
		this.jsNo1 = jsNo1;
		this.jsPrice1 = jsPrice1;
		this.jsWeeks1 = jsWeeks1;
		this.jsNo2 = jsNo2;
		this.jsPrice2 = jsPrice2;
		this.jsWeeks2 = jsWeeks2;
		this.sNo1 = sNo1;
		this.sPrice1 = sPrice1;
		this.sWeeks1 = sWeeks1;
		this.sNo2 = sNo2;
		this.sPrice2 = sPrice2;
		this.sWeeks2 = sWeeks2;
	}

	// 메소드 gs
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

	public int getPensionNo() {
		return pensionNo;
	}

	public void setPensionNo(int pensionNo) {
		this.pensionNo = pensionNo;
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

	public String getRoomAmenities() {
		return roomAmenities;
	}

	public void setRoomAmenities(String roomAmenities) {
		this.roomAmenities = roomAmenities;
	}

	public String getAddInfo() {
		return addInfo;
	}

	public void setAddInfo(String addInfo) {
		this.addInfo = addInfo;
	}

	public String getReserveAvai() {
		return reserveAvai;
	}

	public void setReserveAvai(String reserveAvai) {
		this.reserveAvai = reserveAvai;
	}

	public int getGbPrice1() {
		return gbPrice1;
	}

	public void setGbPrice1(int gbPrice1) {
		this.gbPrice1 = gbPrice1;
	}

	public List<String> getGbWeeks1() {
		return gbWeeks1;
	}

	public void setGbWeeks1(List<String> gbWeeks1) {
		this.gbWeeks1 = gbWeeks1;
	}

	public int getGbPrice2() {
		return gbPrice2;
	}

	public void setGbPrice2(int gbPrice2) {
		this.gbPrice2 = gbPrice2;
	}

	public List<String> getGbWeeks2() {
		return gbWeeks2;
	}

	public void setGbWeeks2(List<String> gbWeeks2) {
		this.gbWeeks2 = gbWeeks2;
	}

	public int getJsPrice1() {
		return jsPrice1;
	}

	public void setJsPrice1(int jsPrice1) {
		this.jsPrice1 = jsPrice1;
	}

	public List<String> getJsWeeks1() {
		return jsWeeks1;
	}

	public void setJsWeeks1(List<String> jsWeeks1) {
		this.jsWeeks1 = jsWeeks1;
	}

	public int getJsPrice2() {
		return jsPrice2;
	}

	public void setJsPrice2(int jsPrice2) {
		this.jsPrice2 = jsPrice2;
	}

	public List<String> getJsWeeks2() {
		return jsWeeks2;
	}

	public void setJsWeeks2(List<String> jsWeeks2) {
		this.jsWeeks2 = jsWeeks2;
	}

	public int getsPrice1() {
		return sPrice1;
	}

	public void setsPrice1(int sPrice1) {
		this.sPrice1 = sPrice1;
	}

	public List<String> getsWeeks1() {
		return sWeeks1;
	}

	public void setsWeeks1(List<String> sWeeks1) {
		this.sWeeks1 = sWeeks1;
	}

	public int getsPrice2() {
		return sPrice2;
	}

	public void setsPrice2(int sPrice2) {
		this.sPrice2 = sPrice2;
	}

	public List<String> getsWeeks2() {
		return sWeeks2;
	}

	public void setsWeeks2(List<String> sWeeks2) {
		this.sWeeks2 = sWeeks2;
	}

	public int getGbNo1() {
		return gbNo1;
	}

	public void setGbNo1(int gbNo1) {
		this.gbNo1 = gbNo1;
	}

	public int getGbNo2() {
		return gbNo2;
	}

	public void setGbNo2(int gbNo2) {
		this.gbNo2 = gbNo2;
	}

	public int getJsNo1() {
		return jsNo1;
	}

	public void setJsNo1(int jsNo1) {
		this.jsNo1 = jsNo1;
	}

	public int getJsNo2() {
		return jsNo2;
	}

	public void setJsNo2(int jsNo2) {
		this.jsNo2 = jsNo2;
	}

	public int getsNo1() {
		return sNo1;
	}

	public void setsNo1(int sNo1) {
		this.sNo1 = sNo1;
	}

	public int getsNo2() {
		return sNo2;
	}

	public void setsNo2(int sNo2) {
		this.sNo2 = sNo2;
	}

	public List<String> getImgfile() {
		return imgfile;
	}

	public void setImgfile(List<String> imgfile) {
		this.imgfile = imgfile;
	}

	@Override
	public String toString() {
		return "HostRoomsVo [no=" + no + ", userNo=" + userNo + ", pensionNo=" + pensionNo + ", roomName=" + roomName
				+ ", standardPeople=" + standardPeople + ", maxPeople=" + maxPeople + ", roomAmenities=" + roomAmenities
				+ ", addInfo=" + addInfo + ", reserveAvai=" + reserveAvai + ", imgfile=" + imgfile + ", gbNo1=" + gbNo1
				+ ", gbPrice1=" + gbPrice1 + ", gbWeeks1=" + gbWeeks1 + ", gbNo2=" + gbNo2 + ", gbPrice2=" + gbPrice2
				+ ", gbWeeks2=" + gbWeeks2 + ", jsNo1=" + jsNo1 + ", jsPrice1=" + jsPrice1 + ", jsWeeks1=" + jsWeeks1
				+ ", jsNo2=" + jsNo2 + ", jsPrice2=" + jsPrice2 + ", jsWeeks2=" + jsWeeks2 + ", sNo1=" + sNo1
				+ ", sPrice1=" + sPrice1 + ", sWeeks1=" + sWeeks1 + ", sNo2=" + sNo2 + ", sPrice2=" + sPrice2
				+ ", sWeeks2=" + sWeeks2 + "]";
	}

}
