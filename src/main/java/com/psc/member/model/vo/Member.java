package com.psc.member.model.vo;

import java.sql.Date;

public class Member {
	private int memberNo;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String phone;
	private String company;
	private int activity;
	private int recognition;
	private String grade;
	private Date enrollDate;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(int memberNo, String memberId, String memberPw, String memberName, String phone, String company,
			int activity, int recognition, String grade, Date enrollDate) {
		super();
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.phone = phone;
		this.company = company;
		this.activity = activity;
		this.recognition = recognition;
		this.grade = grade;
		this.enrollDate = enrollDate;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getActivity() {
		return activity;
	}
	public void setActivity(int activity) {
		this.activity = activity;
	}
	public int getRecognition() {
		return recognition;
	}
	public void setRecognition(int recognition) {
		this.recognition = recognition;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	
	@Override
	public String toString() {
		return "memberId : "+memberId+" memberName : "+memberName+" phone : "+phone+" company : "+company
				+ "activity : "+activity+" recognition : "+recognition+" grade : "+grade;
	}
}
