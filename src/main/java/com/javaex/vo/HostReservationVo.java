package com.javaex.vo;

public class HostReservationVo {
	
	private String reservationNo;
	private int hostNo;
	private String roomName;
	private String guestName;
	private int guestNo;
	private int totalPrice;
	private String hp;
	private String checkin;
	private String checkout;
	private String adult;
	private String kid;
	private String baby;
	private String status;
	
	public HostReservationVo() {}

	public HostReservationVo(String reservationNo, int hostNo, String roomName, String guestName, int guestNo,
			int totalPrice, String hp, String checkin, String checkout, String adult, String kid, String baby,
			String status) {
		this.reservationNo = reservationNo;
		this.hostNo = hostNo;
		this.roomName = roomName;
		this.guestName = guestName;
		this.guestNo = guestNo;
		this.totalPrice = totalPrice;
		this.hp = hp;
		this.checkin = checkin;
		this.checkout = checkout;
		this.adult = adult;
		this.kid = kid;
		this.baby = baby;
		this.status = status;
	}

	public String getReservationNo() {
		return reservationNo;
	}

	public void setReservationNo(String reservationNo) {
		this.reservationNo = reservationNo;
	}

	public int getHostNo() {
		return hostNo;
	}

	public void setHostNo(int hostNo) {
		this.hostNo = hostNo;
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

	public int getGuestNo() {
		return guestNo;
	}

	public void setGuestNo(int guestNo) {
		this.guestNo = guestNo;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
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

	public String getAdult() {
		return adult;
	}

	public void setAdult(String adult) {
		this.adult = adult;
	}

	public String getKid() {
		return kid;
	}

	public void setKid(String kid) {
		this.kid = kid;
	}

	public String getBaby() {
		return baby;
	}

	public void setBaby(String baby) {
		this.baby = baby;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "HostReservationVo [reservationNo=" + reservationNo + ", hostNo=" + hostNo + ", roomName=" + roomName
				+ ", guestName=" + guestName + ", guestNo=" + guestNo + ", totalPrice=" + totalPrice + ", hp=" + hp
				+ ", checkin=" + checkin + ", checkout=" + checkout + ", adult=" + adult + ", kid=" + kid + ", baby="
				+ baby + ", status=" + status + "]";
	}
	
}
