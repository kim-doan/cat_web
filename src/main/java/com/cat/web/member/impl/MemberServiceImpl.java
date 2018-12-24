package com.cat.web.member.impl;
import java.util.*;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cat.web.member.dao.MemberDAO;
import com.cat.web.member.service.MemberService;
import com.cat.web.member.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO daoMapper;
	
	@Override
	@Transactional
	public int insert(MemberVO member) {
		// TODO Auto-generated method stub
		return daoMapper.insert(member);
	}

	@Override
	@Transactional
	public boolean checkAccount(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		MemberVO name = daoMapper.accountProcess(member);
		if(name != null) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	@Transactional
	public MemberVO accountProcess(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		return daoMapper.accountProcess(member);
	}

	@Override
	public void logout(HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		session.invalidate();
	}

	@Override
	public MemberVO loginProcess(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		return daoMapper.loginProcess(member);
	}

	@Override
	public boolean loginCheck(MemberVO member, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		MemberVO name = daoMapper.loginProcess(member);
		if(name != null) {
			//세션 변수 등록
			System.out.println(name.toString());
			session.setAttribute("userId", name.getId());
			session.setAttribute("userName", name.getName());
			session.setAttribute("userEmail", name.getEmail());
			session.setAttribute("userAddress", name.getAddress());
			session.setAttribute("userPhone", name.getPhone());
			return true;
		} else {
			return false;
		}
	}

	@Override
	public String idLook(MemberVO member) {
		// TODO Auto-generated method stub
		String id = daoMapper.idLook(member);
		return id;
	}

	@Override
	public int update(MemberVO member) {
		// TODO Auto-generated method stub
		return daoMapper.update(member);
	}
}
