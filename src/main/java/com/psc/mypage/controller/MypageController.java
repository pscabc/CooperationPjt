package com.psc.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.psc.mypage.model.service.MypageService;

@Controller
public class MypageController {
	@Autowired
	@Qualifier(value="mypageService")
	MypageService mypageService;
	
	@RequestMapping("/mypage.do")
	public String mypage() {
		return "mypage/mypage";
	}
}
