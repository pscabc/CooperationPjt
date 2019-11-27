package com.psc.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.psc.board.model.dao.BoardDao;
import com.psc.board.model.vo.Board;
import com.psc.board.model.vo.BoardUpdate;
import com.psc.board.model.vo.ChargeBoard;
import com.psc.board.model.vo.UpdateState;
import com.psc.comment.model.vo.Comment;

@Service
public class BoardService {
	@Autowired
	BoardDao boardDao;

	public int boardCount() {
		int totalCount = boardDao.boardCount();
		return totalCount;
	}

	public List<Board> boardList(int start, int end) {
		List<Board> list = boardDao.boardList(start, end);
		return list;
	}

	public Board boardView(int boardNo) {
		Board board = boardDao.boardView(boardNo);
		return board;
	}

	public int deleteBoard(int boardNo) {
		int result = boardDao.deleteBoard(boardNo); 
		return result;
	}

	public int updateBoard(BoardUpdate boardUpdate) {
		int result = boardDao.updateBoard(boardUpdate);
		return result;
	}

	public int updateCommentCount(int boardNo) {
		int result2 = boardDao.updateCommentCount(boardNo);
		return result2;
	}

	public int minusCommentCount(int boardNo) {
		int result2 = boardDao.minusCommentCount(boardNo);
		return result2;
	}

	public List<Board> chargeBoardList() {
		List<Board> list = boardDao.chargeBoardList();
		return list;
	}

	public Board boardOne(int boardNo) {
		Board board = boardDao.boardOne(boardNo);
		return board;
	}

	public int updateChargeBoard(ChargeBoard chargeBoard) {
		int result = boardDao.updateChargeBoard(chargeBoard);
		return result;
	}

	public int deleteChargeBoard(int boardNo) {
		int result = boardDao.deleteChargeBoard(boardNo);
		return result;
	}

	public int updateBoardState(UpdateState updateState) {
		int result = boardDao.updateBoardState(updateState);
		return result;
	}

	public List<Board> myBoardList(String memberId) {
		List<Board> list = boardDao.myBoardList(memberId);
		return list;
	}

	public List<Board> completeQuestionList(String memberId) {
		List<Board> list = boardDao.completeQuestionList(memberId);
		return list;
	}
	public List<Board> progressQuestionList(String memberId) {
		List<Board> list = boardDao.progressQuestionList(memberId);
		return list;
	}

	public int insertBoard(Board board) {
		int result = boardDao.insertBoard(board);
		return result;
	}
}
