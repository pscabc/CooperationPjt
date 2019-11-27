package com.psc.comment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.psc.board.model.service.BoardService;
import com.psc.board.model.vo.UpdateState;
import com.psc.comment.model.service.CommentService;
import com.psc.comment.model.vo.Comment;
import com.sun.org.glassfish.gmbal.ParameterNames;

import net.sf.json.JSONObject;

@Controller
public class CommentController {
	@Autowired
	@Qualifier("commentService")
	CommentService commentService;
	@Autowired
	@Qualifier("boardService")
	BoardService boardService;
	
	@RequestMapping(value="/insertComment.do")
	@ResponseBody
	public int insertComment(@RequestParam int boardNo, @RequestParam String commentWriterId,
					@RequestParam String commentWriterName, @RequestParam String commentContent,
					@RequestParam String commentGrade, @RequestParam String commentCompany) {
		
		System.out.println("CommentController boardNo : "+boardNo);
		Comment comment = new Comment(boardNo, 0, commentWriterName, commentWriterId,commentGrade,commentCompany, commentContent, 0,null);
		int result = commentService.insertComment(comment);
		int result2 = boardService.updateCommentCount(boardNo);
		int result3 = 1;
		
		if(commentGrade.equals("협력사직원")) {
			UpdateState updateState = new UpdateState("피드백요청", boardNo);
			 result3 = boardService.updateBoardState(updateState);
		}
		else if(commentGrade.equals("제조사직원")) {
			UpdateState updateState = new UpdateState("답변등록", boardNo);
			 result3 = boardService.updateBoardState(updateState);
		}
		int resultBool = 0;
		if(result*result2*result3 > 0) {
			resultBool = 1;
		}
		return resultBool;
	}
	
	@RequestMapping(value="/deleteComment.do")
	@ResponseBody
	public int deleteComment(@RequestParam int commentNo, @RequestParam int boardNo) {
		//댓글 삭제
		int result = commentService.deleteComment(commentNo);
		int result2 = boardService.minusCommentCount(boardNo);
		ModelAndView mv = new ModelAndView();
		int resultBool = 0;
		if(result*result2 > 0) {	
			resultBool = 1;
		}
		
		return resultBool;
	}
	@RequestMapping(value="/updateComment.do")
	public ModelAndView updateComment(@RequestParam int commentNo, @RequestParam int boardNo, @RequestParam String commentWriterId,
			@RequestParam String commentWriterName, @RequestParam String commentContent,
			@RequestParam String commentGrade, @RequestParam String commentCompany) {
		
		Comment comment = new Comment(boardNo, commentNo, commentWriterName, commentWriterId, commentGrade, commentCompany, commentContent, 0, null);
		int result = commentService.updateComment(comment);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardNo",boardNo);
		if(result > 0) {
			mv.setViewName("comment/updateCommentSucess");
		}else {
			mv.setViewName("comment/updateCommentFailed");
		}
		return mv;
	}
	
	@RequestMapping(value="/commentLike.do")
	@ResponseBody
	public int commentLike(@RequestParam int commentNo,@RequestParam int boardNo) {
		int result = commentService.commentLike(commentNo);
		UpdateState updateState = new UpdateState("처리완료", boardNo);
		int result2 = boardService.updateBoardState(updateState);
		return result;
	}
	
	@RequestMapping(value="commentLikeCancel")
	@ResponseBody
	public int commentLikeCancel(@RequestParam int commentNo) {
		int result = commentService.commentLikeCancel(commentNo);
		return result;
	}

	@RequestMapping(value="/commentList.do",produces = "application/text; charset=utf8")
	@ResponseBody
	public String commentList(@RequestParam int boardNo) {
		List<Comment> list = commentService.commentList(boardNo);
		JSONObject jo = new JSONObject();
		jo.put("list",list);
		
		return new Gson().toJson(jo);
	}
	
	@RequestMapping(value="/updateCommentAjax.do")
	@ResponseBody
	public int updateCommentAjax(@RequestParam int commentNo, @RequestParam String commentContent) {
		Comment comment = new Comment(0, commentNo, null, null, null, null, commentContent, 0, null);
		int result = commentService.updateComment(comment);
		return result;
	}
}
