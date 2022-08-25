package com.javaex.vo;

public class HostSalesVo {
	
	private String roomName;
	private String checkin;
	private String checkout;
	private String guestName;
	private String hp;
	private int people;
	private String totalPrice;
	private String paidDay;
	private String payWay;
	
	public HostSalesVo() {}
	
	public HostSalesVo(String roomName, String checkin, String checkout, String guestName, String hp, int people,
			String totalPrice, String paidDay, String payWay) {
		this.roomName = roomName;
		this.checkin = checkin;
		this.checkout = checkout;
		this.guestName = guestName;
		this.hp = hp;
		this.people = people;
		this.totalPrice = totalPrice;
		this.paidDay = paidDay;
		this.payWay = payWay;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getPaidDay() {
		return paidDay;
	}

	public void setPaidDay(String paidDay) {
		this.paidDay = paidDay;
	}

	public String getPayWay() {
		return payWay;
	}

	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}

	@Override
	public String toString() {
		return "HostSalesVo [roomName=" + roomName + ", checkin=" + checkin + ", checkout=" + checkout + ", guestName="
				+ guestName + ", hp=" + hp + ", people=" + people + ", totalPrice=" + totalPrice + ", paidDay="
				+ paidDay + ", payWay=" + payWay + "]";
	}
	
	
}
