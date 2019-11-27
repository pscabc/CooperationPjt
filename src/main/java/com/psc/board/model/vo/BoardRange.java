package com.psc.board.model.vo;

public class BoardRange {
	private int start;
	private int end;
	public BoardRange() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardRange(int start, int end) {
		super();
		this.start = start;
		this.end = end;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
}
