package com.psc.pro.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psc.member.model.vo.Member;
import com.psc.pro.model.dao.ProDao;
import com.psc.pro.model.vo.Cooper;

@Service("proService")
public class ProService {

	@Autowired
	@Qualifier(value="proDao")
	ProDao proDao;
	
	public List<Member> recogMemberList() {
		List<Member> list = proDao.recogMemberList();
		return list;
	}

	public int recoMember(String memberId) {
		int result = proDao.recogMember(memberId);
		return result;
	}

	public List<Member> conMemberList() {
		List<Member> list = proDao.conMemberList();
		return list;
	}

	public int conMember(String memberId,String activity) {
		int result = proDao.conMember(memberId,activity);
		return result;
	}

	public int gradeUpdateMember(String memberId, String grade) {
		int result = proDao.gradeUpdateMember(memberId,grade);
		return result;
	}

	public List<Cooper> selectCooperList() {
		List<Cooper> list = proDao.selectCooperList();
		return list;
	}

	public int deleteCooper(int cooperNo) {	
		int result = proDao.deleteCooper(cooperNo);
		return result;
	}

	public int activityCooper(int cooperNo,int state) {
		int result = proDao.activityCooper(cooperNo,state);
		return result;
	}

	public int insertCooper(String cooperName) {
		int result = proDao.insertCooper(cooperName);
		return result;
	}

}
