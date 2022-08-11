package com.javaex.vo;

public class HostRoomsVo {

	   // 필드
	   private int no;
	   private int pensionNo;
	   private String roomName;
	   private int standardPeople;
	   private int maxPeople;
	   private String roomAmenities;
	   private String addInfo;
	   private String reserveAvai;
	   
	   //생성자
	   public HostRoomsVo() {
	      super();
	   }
	   public HostRoomsVo(int no, int pensionNo, String roomName, int standardPeople, int maxPeople, String roomAmenities,
	         String addInfo, String reserveAvai) {
	      super();
	      this.no = no;
	      this.pensionNo = pensionNo;
	      this.roomName = roomName;
	      this.standardPeople = standardPeople;
	      this.maxPeople = maxPeople;
	      this.roomAmenities = roomAmenities;
	      this.addInfo = addInfo;
	      this.reserveAvai = reserveAvai;
	   }
	   //메소드 gs
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
	   
	   //메소드 일반
	   @Override
	   public String toString() {
	      return "HostRoomsVo [no=" + no + ", pensionNo=" + pensionNo + ", roomName=" + roomName + ", standardPeople="
	            + standardPeople + ", maxPeople=" + maxPeople + ", roomAmenities=" + roomAmenities + ", addInfo="
	            + addInfo + ", reserveAvai=" + reserveAvai + "]";
	   }

}
