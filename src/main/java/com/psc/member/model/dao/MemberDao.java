package com.psc.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.psc.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public Member selectOneMember(Member member) {
		Member m = sqlSessionTemplate.selectOne("member.selectOneMember",member);
		System.out.println("memberDao memberId : " + member.getMemberId());
		System.out.println("memberDao memberPw : " + member.getMemberPw());
		return m;
	}

	public int checkId(String memberId) {
		int result = 0;
		Member m = sqlSessionTemplate.selectOne("member.checkId",memberId);
		if(m != null) {
			result = 1;
		}else {
			result = 0;
		}
		return result;
	}

	public List<String> cooperList() {
		List<String> cooper = sqlSessionTemplate.selectList("member.cooperList");
		for(String s : cooper) {
			System.out.println(s);
		}
		return cooper;
	}

	public int insertMember(Member m) {
		int result = sqlSessionTemplate.insert("member.insertMember",m);
		return result;
	}

	public List<Member> manufacturerList() {
		List<Member> list = sqlSessionTemplate.selectList("member.manufacturerList");
		return list;
	}
}
