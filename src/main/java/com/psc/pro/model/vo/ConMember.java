package com.psc.pro.model.vo;

public class ConMember {
	private String memberId;
	private String activity;
	public ConMember() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ConMember(String memberId, String activity) {
		super();
		this.memberId = memberId;
		this.activity = activity;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
}
