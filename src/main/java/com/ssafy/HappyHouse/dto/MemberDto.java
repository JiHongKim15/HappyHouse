package com.ssafy.HappyHouse.dto;

public class MemberDto {
	private String userid;
	private String username;
	private String userpwd;
	private String email;
	private String address;
	private String joindate;
	private String sido;
	private String gugun;
	private String dong;
	
	

	@Override
	public String toString() {
		return "MemberDto [userid=" + userid + ", username=" + username + ", userpwd=" + userpwd + ", email=" + email
				+ ", address=" + address + ", joindate=" + joindate + ", sido=" + sido + ", gugun=" + gugun + ", dong="
				+ dong + "]";
	}

	public MemberDto(String userid, String username, String userpwd, String email, String address, String joindate,
			String sido, String gugun, String dong) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpwd = userpwd;
		this.email = email;
		this.address = address;
		this.joindate = joindate;
		this.sido = sido;
		this.gugun = gugun;
		this.dong = dong;
	}

	public MemberDto(String userid, String username, String userpwd, String email, String address) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpwd = userpwd;
		this.email = email;
		this.address = address;
	}

	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getJoindate() {
		return joindate;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getGugun() {
		return gugun;
	}

	public void setGugun(String gugun) {
		this.gugun = gugun;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}
	
}
