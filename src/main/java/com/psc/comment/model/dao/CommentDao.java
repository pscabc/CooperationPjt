package com.psc.comment.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.psc.comment.model.vo.Comment;


@Repository("commentDao")
public class CommentDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int insertComment(Comment comment) {
		int result = sqlSessionTemplate.insert("comment.insertComment",comment);
		return result;
	}

	public List<Comment> commentList(int boardNo) {
		List<Comment> commentList = sqlSessionTemplate.selectList("comment.commentList",boardNo);
		return commentList;
	}

	public int deleteComment(int commentNo) {
		int result = sqlSessionTemplate.delete("comment.deleteComment",commentNo);
		return result;
	}

	public int updateComment(Comment comment) {
		int result = sqlSessionTemplate.update("comment.updateComment",comment);
		return result;
	}

	public int commentLike(int commentNo) {
		int result = sqlSessionTemplate.update("comment.CommentLike",commentNo);
		return result;
	}

	public int commentLikeCancel(int commentNo) {
		int result = sqlSessionTemplate.update("comment.CommentLikeCancel",commentNo);
		return result;
	}
}
