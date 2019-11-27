package com.psc.comment.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psc.comment.model.dao.CommentDao;
import com.psc.comment.model.vo.Comment;

@Service("commentService")
public class CommentService {
	@Autowired
	@Qualifier(value="commentDao")
	CommentDao commentDao;
	
	public int insertComment(Comment comment) {
		int result = commentDao.insertComment(comment);
		return result;
	}

	public List<Comment> commentList(int boardNo) {
		List<Comment> commentList = commentDao.commentList(boardNo);
		return commentList;
	}

	public int deleteComment(int commentNo) {
		int result = commentDao.deleteComment(commentNo);
		return result;
	}

	public int updateComment(Comment comment) {
		int result = commentDao.updateComment(comment);
		return result;
	}

	public int commentLike(int commentNo) {
		int result = commentDao.commentLike(commentNo);
		return result;
	}

	public int commentLikeCancel(int commentNo) {
		int result = commentDao.commentLikeCancel(commentNo);
		return result;
	}
}
