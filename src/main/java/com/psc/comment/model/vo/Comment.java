package com.psc.comment.model.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class Comment {
	private int boardNo;
	private int commentNo;
	private String writerName;
	private String writerId;
	private String grade;
	private String company;
	private String commentContent;
	private int commentLike;
	private Date commentDate;
	
	public String getCommentDate() {
		java.util.Date from = new java.util.Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		String to = transFormat.format(from);
		
		return to;
	}

	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Comment(int boardNo, int commentNo, String writerName, String writerId, String grade, String company,
			String commentContent, int commentLike, Date commentDate) {
		super();
		this.boardNo = boardNo;
		this.commentNo = commentNo;
		this.writerName = writerName;
		this.writerId = writerId;
		this.grade = grade;
		this.company = company;
		this.commentContent = commentContent;
		this.commentLike = commentLike;
		this.commentDate = commentDate;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
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

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public int getCommentLike() {
		return commentLike;
	}

	public void setCommentLike(int commentLike) {
		this.commentLike = commentLike;
	}
}

