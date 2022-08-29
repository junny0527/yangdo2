package com.javaex.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class UserReviewVo {

	// field
	private int no;
	private int pNo;
	private int resNo;
	private String title;
	private double stars;
	private MultipartFile img1;
	private MultipartFile img2;
	private String image1;
	private String image2;
	private String content;
	private Date regDate;
	private String filePath1;
	private String filePath2;

	// constructor
	public UserReviewVo() {
		super();
	}

	public UserReviewVo(int no, int pNo, int resNo, String title, double stars, MultipartFile img1,
			MultipartFile img2, String image1, String image2, String content, Date regDate, String filePath1,
			String filePath2) {
		super();
		this.no = no;
		this.pNo = pNo;
		this.resNo = resNo;
		this.title = title;
		this.stars = stars;
		this.img1 = img1;
		this.img2 = img2;
		this.image1 = image1;
		this.image2 = image2;
		this.content = content;
		this.regDate = regDate;
		this.filePath1 = filePath1;
		this.filePath2 = filePath2;
	}

	public int getno() {
		return no;
	}

	public void setno(int no) {
		this.no = no;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getResNo() {
		return resNo;
	}

	public void setResNo(int resNo) {
		this.resNo = resNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getStars() {
		return stars;
	}

	public void setStars(double stars) {
		this.stars = stars;
	}

	public MultipartFile getImg1() {
		return img1;
	}

	public void setImg1(MultipartFile img1) {
		this.img1 = img1;
	}

	public MultipartFile getImg2() {
		return img2;
	}

	public void setImg2(MultipartFile img2) {
		this.img2 = img2;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getFilePath1() {
		return filePath1;
	}

	public void setFilePath1(String filePath1) {
		this.filePath1 = filePath1;
	}

	public String getFilePath2() {
		return filePath2;
	}

	public void setFilePath2(String filePath2) {
		this.filePath2 = filePath2;
	}

	@Override
	public String toString() {
		return "UserReviewVo [no=" + no + ", pNo=" + pNo + ", resNo=" + resNo + ", title=" + title
				+ ", stars=" + stars + ", img1=" + img1 + ", img2=" + img2 + ", image1=" + image1 + ", image2=" + image2
				+ ", content=" + content + ", regDate=" + regDate + ", filePath1=" + filePath1 + ", filePath2="
				+ filePath2 + "]";
	}

}