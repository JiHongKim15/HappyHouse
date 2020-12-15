package com.ssafy.HappyHouse.dto;

public class NoticeDto {
	private int no;
	private String userid;
	private String subject;
	private String content;
	private String regtime;
	private String rate;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegtime() {
		return regtime;
	}
	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}
	
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	@Override
	public String toString() {
		return "NoticeDto [no=" + no + ", userid=" + userid + ", subject=" + subject + ", content=" + content
				+ ", regtime=" + regtime + ", rate=" + rate + "]";
	}
	
	
}
