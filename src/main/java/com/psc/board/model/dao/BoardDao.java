package com.psc.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.psc.board.model.vo.Board;
import com.psc.board.model.vo.BoardRange;
import com.psc.board.model.vo.BoardUpdate;
import com.psc.board.model.vo.ChargeBoard;
import com.psc.board.model.vo.UpdateState;

@Repository
public class BoardDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int boardCount() {
		int totalCount = sqlSessionTemplate.selectOne("board.boardCount");
		System.out.println("totalCount : "+totalCount);
		return totalCount;
	}

	public List<Board> boardList(int start, int end) {
		System.out.println("dao start : "+start);
		BoardRange boardRange = new BoardRange(start, end);
		List<Board> list = sqlSessionTemplate.selectList("board.boardList",boardRange);
		return list;
	}

	public Board boardView(int boardNo) {
		Board board = sqlSessionTemplate.selectOne("board.boardView",boardNo);
		return board;
	}

	public int deleteBoard(int boardNo) {
		int result = sqlSessionTemplate.delete("board.deleteBoard",boardNo);
		return result;
	}

	public int updateBoard(BoardUpdate boardUpdate) {
		int result = sqlSessionTemplate.update("board.updateBoard",boardUpdate);
		return result;
	}

	public int updateCommentCount(int boardNo) {
		int result2 = sqlSessionTemplate.update("board.updateCommentCount",boardNo);
		return result2;
	}

	public int minusCommentCount(int boardNo) {
		int result2 = sqlSessionTemplate.update("board.minusCommentCount",boardNo);
		return result2;
	}

	public List<Board> chargeBoardList() {
		List<Board> list = sqlSessionTemplate.selectList("board.chargeBoardList");
		return list;
	}

	public Board boardOne(int boardNo) {
		Board board = sqlSessionTemplate.selectOne("board.boardOne",boardNo);
		return board;
	}

	public int updateChargeBoard(ChargeBoard chargeBoard) {
		int result = sqlSessionTemplate.update("board.updateChargeBoard",chargeBoard);
		return result;
	}

	public int deleteChargeBoard(int boardNo) {
		int result = sqlSessionTemplate.update("board.deleteChargeBoard",boardNo);
		return result;
	}

	public int updateBoardState(UpdateState updateState) {
		int result = sqlSessionTemplate.update("board.updateBoardState",updateState);
		return result;
	}

	public List<Board> myBoardList(String memberId) {
		List<Board> list = sqlSessionTemplate.selectList("board.myBoardList",memberId);
		return list;
	}

	public List<Board> completeQuestionList(String memberId) {
		List<Board> list = sqlSessionTemplate.selectList("board.completeQuestionList",memberId);
		return list;
	}
	public List<Board> progressQuestionList(String memberId) {
		List<Board> list = sqlSessionTemplate.selectList("board.progressQuestionList",memberId);
		return list;
	}

	public int insertBoard(Board board) {
		int result = sqlSessionTemplate.insert("board.insertBoard",board);
		return result;
	}


	
	
	
}
