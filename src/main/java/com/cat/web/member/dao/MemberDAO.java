package com.cat.web.member.dao;

import java.util.*;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;

import com.cat.web.member.vo.MemberVO;

@Repository
public interface MemberDAO {
	public int insert(MemberVO member);
	public boolean checkAccount(MemberVO member) throws Exception;
	public MemberVO accountProcess(MemberVO member) throws Exception;
	public void logout(HttpSession session) throws Exception;
	public MemberVO loginProcess(MemberVO member) throws Exception;
	public boolean loginCheck(MemberVO member, HttpSession session) throws Exception;
	public String idLook(MemberVO member);
	public int update(MemberVO member);
}
