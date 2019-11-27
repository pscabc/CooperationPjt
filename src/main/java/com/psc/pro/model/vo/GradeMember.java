package com.psc.pro.model.vo;

public class GradeMember {
	private String memberId;
	private String grade;
	public GradeMember() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GradeMember(String memberId, String grade) {
		super();
		this.memberId = memberId;
		this.grade = grade;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	
}
