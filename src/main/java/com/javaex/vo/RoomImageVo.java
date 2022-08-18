package com.javaex.vo;

public class RoomImageVo {

	private int no;
	private int roomNo;
	private String imgPath;

	public RoomImageVo() {
		super();
	}

	public RoomImageVo(int no, int roomNo, String imgPath) {
		super();
		this.no = no;
		this.roomNo = roomNo;
		this.imgPath = imgPath;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	@Override
	public String toString() {
		return "RoomImageVo [no=" + no + ", roomNo=" + roomNo + ", imgPath=" + imgPath + "]";
	}

}
