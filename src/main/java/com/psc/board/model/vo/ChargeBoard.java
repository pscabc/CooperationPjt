package com.psc.board.model.vo;

public class ChargeBoard {
	int boardNo;
	String memberId;
	String memberName;
	public ChargeBoard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChargeBoard(int boardNo, String memberId, String memberName) {
		super();
		this.boardNo = boardNo;
		this.memberId = memberId;
		this.memberName = memberName;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	
}
