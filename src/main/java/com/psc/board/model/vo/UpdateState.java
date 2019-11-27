package com.psc.board.model.vo;

public class UpdateState {
	private String boardState;
	private int boardNo;
	public UpdateState(String boardState, int boardNo) {
		super();
		this.boardState = boardState;
		this.boardNo = boardNo;
	}
	public UpdateState() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getBoardState() {
		return boardState;
	}
	public void setBoardState(String boardState) {
		this.boardState = boardState;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
}
