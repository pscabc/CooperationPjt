package com.psc.pro.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.psc.member.model.vo.Member;
import com.psc.pro.model.service.ProService;
import com.psc.pro.model.vo.Cooper;

import net.sf.json.JSONObject;

@Controller

public class ProController {
	@Autowired
	@Qualifier(value="proService")
	ProService proService;
	
	public ProController() {
		super();
		System.out.println("con");
		// TODO Auto-generated constructor stub
	}

	@RequestMapping(value="/program.do")
	public ModelAndView login() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("program/program");
		
		return mav;
	}
	
	@RequestMapping(value="/recogMemberList.do",produces = "application/text; charset=utf8",method=RequestMethod.GET)
	@ResponseBody
	public String recogMemberList(HttpServletResponse response) {
		List<Member> list = proService.recogMemberList();
		JSONObject jo = new JSONObject();
		jo.put("list",list);

		return new Gson().toJson(jo);
	}
	
	@RequestMapping(value="/recogMember.do")
	@ResponseBody
	public int reconMember(@RequestParam String memberId) {
		int result = proService.recoMember(memberId);
		System.out.println("memberId : "+memberId);
		
		return result;
	}
	
	@RequestMapping(value="/conMemberList.do",produces = "application/text; charset=utf-8")
	@ResponseBody
	public String conMemberList() {
		List<Member> list = proService.conMemberList();
		JSONObject jo = new JSONObject();
		jo.put("list", list);
		
		return new Gson().toJson(jo);
	}
	
	@RequestMapping(value="/conMember.do")
	@ResponseBody
	public int conMember(@RequestParam String memberId,@RequestParam String activity) {
		int result = proService.conMember(memberId,activity);
		
		return result;
	}
	
	@RequestMapping(value="/gradeUpdateMember.do")
	@ResponseBody
	public int gradeUpdateMember(@RequestParam String memberId, @RequestParam String grade) {
		int result = proService.gradeUpdateMember(memberId, grade);
		return result;
		
	}
	@RequestMapping(value="/selectCooperList.do",produces = "application/text; charset=utf-8")
	@ResponseBody
	public String selectCooperList() {
		System.out.println("/selectCooperList.do 들어옴");
		List<Cooper> list = proService.selectCooperList();
		
		System.out.println("왜안돼");
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getCooperName());
		}
		JSONObject jo = new JSONObject();
		jo.put("list", list);
		
		return new Gson().toJson(jo);
	}
	
	@RequestMapping(value="/deleteCooper.do")
	@ResponseBody
	public int deleteCooper(@RequestParam int cooperNo) {
		int result = proService.deleteCooper(cooperNo);
		return result;
	}
	
	@RequestMapping(value="/activityCooper.do")
	@ResponseBody
	public int activityCooper(@RequestParam int cooperNo,@RequestParam int state) {
		int result = proService.activityCooper(cooperNo,state);
		return result;
	}
	
	@RequestMapping(value="/insertCooper.do")
	@ResponseBody
	public int insertCooper(@RequestParam String cooperName) {
		int result = proService.insertCooper(cooperName);
		return result;
	}
	
	
}
