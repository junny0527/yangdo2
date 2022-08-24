package com.javaex.vo;

public class UserVo {
	
	//필드
	private int no;
	private String id;
	private String pw;
	private String hp;
	private String nickName;
	private String email;
	private String identify;
	//생성자
	public UserVo() {
		super();
	}

	public UserVo(int no, String id, String pw, String hp, String nickName, String email, 
			String identify) {
		super();
		this.no = no;
		this.id = id;
		this.pw = pw;
		this.hp = hp;
		this.nickName = nickName;
		this.email = email;
		this.identify = identify;
	}

	//메소드 gs
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIdentify() {
		return identify;
	}
	public void setIdentify(String identify) {
		this.identify = identify;
	}
	

	//메소듸 일반
	@Override
	public String toString() {
		return "UserVo [no=" + no + ", id=" + id + ", pw=" + pw + ", hp=" + hp + ", nickName=" + nickName + ", email="
				+ email + ", identify=" + identify + "]";
	}
	
}
