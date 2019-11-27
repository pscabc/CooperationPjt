package com.psc.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.psc.member.model.service.MemberService;
import com.psc.member.model.vo.Member;

import net.sf.json.JSONObject;

@Controller
public class MemberController {
	@Autowired
	@Qualifier(value="memberService")
	MemberService memberService;
	
	@RequestMapping(value="/login.do")
	public String login(HttpSession session,@RequestParam String memberId, @RequestParam String memberPw) {
		ModelAndView mv = new ModelAndView();
		Member member = new Member();
		
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);
		
		Member m = memberService.selectOneMember(member);
		
		if(m != null) {
			session.setAttribute("m", m);
			return "member/loginSuccess";
		}else {
			return "member/loginFailed";
		}
	}
	
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "common/toIndex";
	}
	
	@RequestMapping(value="/join.do")
	public ModelAndView join() {
		ModelAndView mv = new ModelAndView();
		
		List<String> cooper = memberService.cooperList();
		
		mv.addObject("cooper",cooper);
		mv.setViewName("member/join");
		
		return mv;
	}
	
	@RequestMapping(value="/checkId", method=RequestMethod.GET)
	@ResponseBody
	public String checkId(@RequestParam String memberId) {
		System.out.println("memberCon 시작");
		//db에 들어가서 해당 id가 있는지 확인
		Member member = new Member();
		member.setMemberId(memberId);
		int result = memberService.checkId(memberId);
		JSONObject object = new JSONObject();
		if(result > 0) {
			object.put("result", 1);
		}else {
			object.put("result", 0);
		}
		return new Gson().toJson(object);
	}
	
	  @RequestMapping(value="/insert.do") 
	  public String insertMember(@RequestParam String memberId, @RequestParam String memberPw,@RequestParam String memberPwRe,@RequestParam String memberName,
			  @RequestParam String phone, @RequestParam String grade, @RequestParam String company,@RequestParam String chk) {

		  System.out.println("chk : "+chk );
		  if(Integer.parseInt(chk) < 5) {
			  return "member/insertFailed";
		  }else {
			  //객체로 묶어서 db에 저장
			  Member m = new Member(0, memberId, memberPw, memberName, phone, company, 1, 0, grade,null);
			  System.out.println(m);
			  int result = memberService.insertMember(m);
			  
			  if(result > 0) {
				  return "member/insertSuccess";
			  }else {
				  return "member/insertFailed";
			  }
		  }
	 }
	 @RequestMapping(value="/menufacturerList.do",produces = "application/text; charset=utf8")
	 @ResponseBody
	 public String menufacturerList() {
		 JSONObject jo = new JSONObject();
		 List<Member> list = memberService.manufacturerList();
		 
		 jo.put("list", list);
		 return new Gson().toJson(jo);
	 }
	 
}
