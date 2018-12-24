package com.cat.web.member.service;
import java.util.*;
import javax.servlet.http.HttpSession;
import com.cat.web.member.vo.MemberVO;

public interface MemberService {
	public int insert(MemberVO member);
	public boolean checkAccount(MemberVO member) throws Exception;
	public MemberVO accountProcess(MemberVO member) throws Exception;
	public void logout(HttpSession session) throws Exception;
	public MemberVO loginProcess(MemberVO member) throws Exception;
	public boolean loginCheck(MemberVO member, HttpSession session) throws Exception;
	public String idLook(MemberVO member);
	public int update(MemberVO member);
}
