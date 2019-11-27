package com.psc.board.controller;

import java.io.InputStream;
import java.io.Writer;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.psc.board.model.service.BoardService;
import com.psc.board.model.vo.Board;
import com.psc.board.model.vo.BoardUpdate;
import com.psc.board.model.vo.ChargeBoard;
import com.psc.board.model.vo.UpdateState;
import com.psc.comment.model.service.CommentService;
import com.psc.comment.model.vo.Comment;

import net.sf.json.JSONObject;

@Controller
public class BoardController {
	@Autowired
	@Qualifier(value="boardService")
	BoardService boardService;
	@Autowired
	@Qualifier(value="commentService")
	CommentService commentService;
	
	
	@RequestMapping(value="/board.do")
	public ModelAndView boardInit(@RequestParam(defaultValue="1") int requestPage) {
		System.out.println("requestPage : " +requestPage);
		int pageNumber = requestPage;
		int totalPage = 0;
		int start = 0;
		int end = 0;
		int startNavi = 0;
		int endNavi = 0;
		//게시물 총 갯수를 가져와야함
		//총 갯수를 10으로 나눈 뒤 나머지가 0보다 클 때만 1을 더해줌.
		int totalCount = boardService.boardCount();
		if(totalCount%10 > 0) {
			totalPage = totalCount/10+1;
		}else {
			totalPage = totalCount/10;
		}
		
		startNavi = pageNumber%10 == 0?pageNumber/10:pageNumber/10+1;
		endNavi = startNavi + 9;
		if(totalPage < endNavi) {
			endNavi = totalPage;
		}
		
		
		//start, end 설정
		start = 10*(pageNumber-1)+1;
		end = start + 9;
	
		//start, end만큼 게시글 가져옴
		List<Board> list = boardService.boardList(start,end);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/board");
		mv.addObject("pageNumber",pageNumber);
		mv.addObject("list",list);
		mv.addObject("startNavi",startNavi);
		mv.addObject("endNavi",endNavi);
		return mv;
	}
			
	@RequestMapping(value="/insertBoardView.do")
	public String insertBoardView() {
		return "board/insertBoard";
	}
	
	
	@RequestMapping(value="/insertBoard.do")
	public ModelAndView insertBoard(@RequestParam String writerName, @RequestParam String writerId, @RequestParam String boardCompany,
						@RequestParam String boardGrade, @RequestParam String boardTitle, @RequestParam String boardContent) {
		ModelAndView mv = new ModelAndView();
		Board board = new Board(0, boardTitle, boardContent, writerName, writerId, boardCompany, null, null, "신규요청", 0, null, null, null);
		int result = boardService.insertBoard(board);
		
		mv.setViewName("common/msg");
		mv.addObject("loc","/board.do");
		if(result>0) {
			mv.addObject("msg","게시글 등록 성공");
		}else {
			mv.addObject("msg","게시글 등록 실패");
		}
		
		return mv;
		
	}
	
	@RequestMapping(value="/boardView.do")
	public ModelAndView boardView(@RequestParam int boardNo) {
		ModelAndView mv = new ModelAndView();
		Board board = boardService.boardView(boardNo);
		List<Comment> commentList = commentService.commentList(boardNo);
		System.out.println(commentList);
		commentList.forEach(element -> {
			System.out.println(element.getWriterName());
		});
		mv.addObject("commentList",commentList);
		mv.addObject("board",board);
		mv.setViewName("board/boardView");
		return mv;
	}
	
	@RequestMapping(value="/deleteBoard.do")
	public ModelAndView deleteBoard(@RequestParam int boardNo) {
		ModelAndView mv = new ModelAndView();
		int result = boardService.deleteBoard(boardNo);
		
		if(result > 0) {
			mv.setViewName("board/deleteBoardSuccess");
			return mv;
		}else {
			mv.addObject("boardNo",boardNo);
			mv.setViewName("board/deleteBoardFailed");
			return mv;
		}
	}
	@RequestMapping(value="/updateView.do")
	public ModelAndView updateView(@RequestParam int boardNo) {
		ModelAndView mv = new ModelAndView();
		Board board = boardService.boardView(boardNo);
		
		mv.addObject("board",board);
		mv.setViewName("board/updateView");
		return mv;
	}
	
	@RequestMapping(value="/updateBoard.do")
	public ModelAndView updateBoard(@RequestParam int boardNo,@RequestParam String boardTitle,
							@RequestParam String boardContent) {
		BoardUpdate boardUpdate = new BoardUpdate(boardNo, boardTitle, boardContent);
		int result = boardService.updateBoard(boardUpdate);
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardNo",boardNo);
		mv.addObject("loc","/boardView.do?boardNo="+boardNo);
		mv.setViewName("common/msg");
		if(result > 0) {
			mv.addObject("msg","게시글 업데이트 성공!");
		}else {
			mv.addObject("msg","게시글 업데이트 실패");
		}
		return mv;
	}
	
	@RequestMapping(value="/chargeBoardList.do",produces = "application/text; charset=utf8")
	@ResponseBody
	public String chargeBoardList() {
		JSONObject jo = new JSONObject();
		List<Board> list = boardService.chargeBoardList();
		jo.put("list",list);
		
		return new Gson().toJson(jo);
	}
	
	@RequestMapping(value="/boardOne.do",produces = "application/text; charset=utf8")
	@ResponseBody
	public String boardOne(@RequestParam int boardNo) {
		JSONObject jo = new JSONObject();
		Board board = boardService.boardOne(boardNo);
		jo.put("board", board);
		System.out.println("board enrollData : "+board.getEnrollDate());
		System.out.println("board boardState : "+board.getBoardState());
		return new Gson().toJson(jo);
	}
	
	@RequestMapping(value="/updateChargeBoard.do")
	@ResponseBody
	public int updateChargeBoard(@RequestParam int boardNo, @RequestParam String memberId, @RequestParam String memberName) {
		ChargeBoard chargeBoard = new ChargeBoard(boardNo, memberId, memberName);
		int result = boardService.updateChargeBoard(chargeBoard);
		UpdateState updateState = new UpdateState("요청할당", boardNo);
		int result2 = boardService.updateBoardState(updateState);
		return result*result2;
	}
	
	@RequestMapping(value="/deleteChargeBoard.do")
	@ResponseBody
	public int deleteChargeBoard(@RequestParam int boardNo) {
		int result = boardService.deleteChargeBoard(boardNo);
		UpdateState updateState = new UpdateState("신규요청", boardNo);
		int result2 = boardService.updateBoardState(updateState);
		return result*result2;
	}
	@RequestMapping(value="/myBoardList.do")
	@ResponseBody
	public String myBoardList(@RequestParam String memberId) {
		JSONObject jo = new JSONObject();
		
		List<Board> list = boardService.myBoardList(memberId);
		
		jo.put("list",list);
		return new Gson().toJson(jo);
	}
	@RequestMapping(value="/completeQuestionList.do",produces = "application/text; charset=utf8")
	@ResponseBody
	public String completeQuestionList(@RequestParam String memberId) {
		System.out.println("memberId : "+memberId);
		JSONObject jo = new JSONObject();
		
		List<Board> list = boardService.completeQuestionList(memberId);
		
		System.out.println("size:"+list.size());
		for(int i = 0; i < list.size(); i++) {
			list.get(i).getBoardTitle();
		}
		jo.put("list", list);
		return new Gson().toJson(jo);
	}
	@RequestMapping(value="/progressQuestionList.do",produces = "application/text; charset=utf8")
	@ResponseBody
	public String progressQuestionList(@RequestParam String memberId) {
		System.out.println("memberId : "+memberId);
		JSONObject jo = new JSONObject();
		
		List<Board> list = boardService.progressQuestionList(memberId);
		System.out.println("size:"+list.size());
		for(int i = 0; i < list.size(); i++) {
			list.get(i).getBoardTitle();
		}
		jo.put("list", list);
		return new Gson().toJson(jo);
	}
	
	
	
}
