package com.psc.pro.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.psc.member.model.vo.Member;
import com.psc.pro.model.vo.ActivityCooper;
import com.psc.pro.model.vo.ConMember;
import com.psc.pro.model.vo.Cooper;
import com.psc.pro.model.vo.GradeMember;

@Repository("proDao")
public class ProDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<Member> recogMemberList() {
		List<Member> list = sqlSessionTemplate.selectList("pro.recogMemberList");
		return list;
	}

	public int recogMember(String memberId) {
		int result = sqlSessionTemplate.update("pro.recogMember",memberId); 
		System.out.println("dao - result : "+result);
		return result;
	}

	public List<Member> conMemberList() {
		List<Member> list = sqlSessionTemplate.selectList("pro.conMemberList");
		return list;	
	}

	public int conMember(String memberId, String activity) {
		ConMember conMember = new ConMember(memberId, activity);
		System.out.println("MemberId : "+conMember.getMemberId() +" Activity : "+conMember.getActivity());
		int result = sqlSessionTemplate.update("pro.conMember",conMember);
		return result;
	}

	public int gradeUpdateMember(String memberId, String grade) {
		GradeMember gradeMember = new GradeMember(memberId, grade);
		int result = sqlSessionTemplate.update("pro.gradeUpdateMember",gradeMember);
		return result;
	}

	public List<Cooper> selectCooperList() {
		List<Cooper> list = sqlSessionTemplate.selectList("pro.selectCooperList");
		return list;
	}

	public int deleteCooper(int cooperNo) {	
		int result = sqlSessionTemplate.delete("pro.delteCooper",cooperNo);
		return result;
	}

	public int activityCooper(int cooperNo,int state) {
		ActivityCooper activityCooper = new ActivityCooper(cooperNo, state);
		int result = sqlSessionTemplate.update("pro.activityCooper",activityCooper);
		return result;
	}

	public int insertCooper(String cooperName) {
		int result = sqlSessionTemplate.insert("pro.insertCooper",cooperName);
		return result;
	}

}
