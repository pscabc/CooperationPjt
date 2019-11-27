package com.psc.support.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.psc.board.model.vo.Board;

@Repository("supportDao")
public class SupportDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<Board> support(String memberId) {
		List<Board> list = sqlSessionTemplate.selectList("board.supportBoardList",memberId);
		return list;
	}
	
}
