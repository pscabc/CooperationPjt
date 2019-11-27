package com.psc.pro.model.vo;

public class ActivityCooper {
	private int cooperNo;
	private int state;
	public ActivityCooper() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ActivityCooper(int cooperNo, int state) {
		super();
		this.cooperNo = cooperNo;
		this.state = state;
	}
	public int getCooperNo() {
		return cooperNo;
	}
	public void setCooperNo(int cooperNo) {
		this.cooperNo = cooperNo;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}

}
