package com.psc.pro.model.vo;

public class Cooper {
	private int cooperNo;
	private String cooperName;
	private int activity;
	
	public int getCooperNo() {
		return cooperNo;
	}
	public void setCooperNo(int cooperNo) {
		this.cooperNo = cooperNo;
	}
	public String getCooperName() {
		return cooperName;
	}
	public void setCooperName(String cooperName) {
		this.cooperName = cooperName;
	}
	public int getActivity() {
		return activity;
	}
	public void setActivity(int activity) {
		this.activity = activity;
	}
		public Cooper(int cooperNo, String cooperName, int activity) {
		super();
		this.cooperNo = cooperNo;
		this.cooperName = cooperName;
		this.activity = activity;
	}
		public Cooper() {
		super();
		// TODO Auto-generated constructor stub
	}
		@Override
	public String toString() {
		return "cooper_no : "+cooperNo+" cooper_name : "+cooperName;
	}
}
