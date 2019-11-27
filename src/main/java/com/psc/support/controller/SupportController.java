package com.psc.support.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.psc.board.model.vo.Board;
import com.psc.member.model.vo.Member;
import com.psc.support.model.service.SupportService;

@Controller("supportController")
public class SupportController {
	@Autowired
	@Qualifier(value="supportService")
	SupportService supportService;
	
	@RequestMapping("/support.do")
	public ModelAndView support(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Member m = (Member)session.getAttribute("m");
		String memberId = m.getMemberId();
		List<Board> list = supportService.support(memberId);
		
		mv.setViewName("support/support");
		mv.addObject("list",list);
		
		return mv;
	}
	
}
