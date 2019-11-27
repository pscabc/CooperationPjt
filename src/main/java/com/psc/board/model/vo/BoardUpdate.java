package com.psc.board.model.vo;

import org.springframework.web.bind.annotation.RequestParam;

public class BoardUpdate {
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	
	public BoardUpdate(int boardNo, String boardTitle, String boardContent) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
	}
	public BoardUpdate() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
}
