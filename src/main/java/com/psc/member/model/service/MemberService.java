package com.psc.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psc.member.model.dao.MemberDao;
import com.psc.member.model.vo.Member;

@Service("memberService")
public class MemberService {
	
	@Autowired
	@Qualifier(value="memberDao")
	MemberDao memberDao;

	public Member selectOneMember(Member member) {
		Member m = memberDao.selectOneMember(member);
		return m;
		
	}

	public int checkId(String memberId) {
		int result = memberDao.checkId(memberId);
		return result;
	}

	public List<String> cooperList() {
		List<String> cooper = memberDao.cooperList();
		return cooper;
	}

	public int insertMember(Member m) {
		int result = memberDao.insertMember(m);
		return result;
	}

	public List<Member> manufacturerList() {
		List<Member> list = memberDao.manufacturerList();
		return list;
	}
}
