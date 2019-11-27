package com.psc.support.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psc.board.model.vo.Board;
import com.psc.support.model.dao.SupportDao;

@Service("supportService")
public class SupportService {
	@Autowired
	@Qualifier(value="supportDao")
	SupportDao supportDao;

	public List<Board> support(String memberId) {
		List<Board> board = supportDao.support(memberId);
		return board;
	}
	
}
