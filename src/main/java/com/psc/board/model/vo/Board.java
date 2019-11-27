package com.psc.board.model.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class Board {
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String writerName;
	private String writerId;
	private String boardCompany;
	private String chargeName;
	private String chargeId;
	private String boardState;
	private int commentCount;
	private String filepath;
	private String filename;
	private Date enrollDate;
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Board(int boardNo, String boardTitle, String boardContent, String writerName, String writerId,
			String boardCompany, String chargeName, String chargeId, String boardState, int commentCount,
			String filepath, String filename, Date enrollDate) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.writerName = writerName;
		this.writerId = writerId;
		this.boardCompany = boardCompany;
		this.chargeName = chargeName;
		this.chargeId = chargeId;
		this.boardState = boardState;
		this.commentCount = commentCount;
		this.filepath = filepath;
		this.filename = filename;
		this.enrollDate = enrollDate;
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





	public String getWriterName() {
		return writerName;
	}





	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}





	public String getWriterId() {
		return writerId;
	}





	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}





	public String getBoardCompany() {
		return boardCompany;
	}





	public void setBoardCompany(String boardCompany) {
		this.boardCompany = boardCompany;
	}





	public String getChargeName() {
		return chargeName;
	}





	public void setChargeName(String chargeName) {
		this.chargeName = chargeName;
	}





	public String getChargeId() {
		return chargeId;
	}





	public void setChargeId(String chargeId) {
		this.chargeId = chargeId;
	}





	public String getBoardState() {
		return boardState;
	}





	public void setBoardState(String boardState) {
		this.boardState = boardState;
	}





	public int getCommentCount() {
		return commentCount;
	}





	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}





	public String getFilepath() {
		return filepath;
	}





	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}





	public String getFilename() {
		return filename;
	}





	public void setFilename(String filename) {
		this.filename = filename;
	}





	public String getEnrollDate() {
		java.util.Date from = new java.util.Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		String to = transFormat.format(from);
		return to;
	}





	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}





	@Override
	public String toString() {
		return "boardNo : "+boardNo+" boardTitle : "+boardTitle+" boardContent : "+boardContent+" writerName : "+writerName+
				" writerId : "+writerId+" boardCompany : "+boardCompany+" chargeName : "+chargeName+
				" chargeId : "+chargeId+" boardState : "+boardState + " filepath : "+filepath+
				" filename : "+filename+" commentCount : "+commentCount+" enrollDate : "+enrollDate;
	}
}
