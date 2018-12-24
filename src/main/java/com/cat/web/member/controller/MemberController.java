package com.cat.web.member.controller;
import java.text.DateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.cat.web.member.service.MemberService;
import com.cat.web.member.vo.MemberVO;
import com.fasterxml.jackson.databind.util.JSONPObject;

import common.common.CommandMap;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	/**
	 * ȸ������
	 */
	@RequestMapping(value = "/terms", method = RequestMethod.GET)
	public ModelAndView terms() {
		ModelAndView mav = new ModelAndView("member/terms");
		return mav;
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public ModelAndView pageSignUP() {
		ModelAndView mav = new ModelAndView("member/join");
		return mav;
	}
	
	/**
	 * ȸ������ - ���̵� �ߺ� üũ
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/checkAccount", method = RequestMethod.POST)
	@ResponseBody
	public String checkAccount(@ModelAttribute MemberVO member, HttpServletRequest request) throws Exception {
		JSONObject json = new JSONObject();
		
		member.setId(request.getParameter("ID"));
		MemberVO idcheck = memberService.accountProcess(member);
		boolean result = memberService.checkAccount(member);
		
		int data = 0;
		if(result == true) { // ���̵� �ߺ�
			data = 1;
		} else { // �ߺ� �ƴ�
			data = 0;
		}
		
		json.put("result", data);
		
		return json.toString();
	}
	
	/**
	 *  ȸ������ - ȸ�� �߰�
	 */
	@RequestMapping(value="/register", method = RequestMethod.POST)
	@ResponseBody
	public String singUP(@ModelAttribute MemberVO member) {
		int result = memberService.insert(member);
		
		if(result == 1) {
			return "1";
		} else {
			return "0";
		}
	}
	
	/*
	 * �α���
	 */
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView pageLogin(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		// �������� Ȯ��
		if(request.getSession().getAttribute("userId") != null) {
			mav.setViewName("member/itemMenuForm");
		} else {
			mav.setViewName("member/login");
		}
		return mav;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public String login(@ModelAttribute MemberVO member, HttpServletRequest request, HttpSession session) throws Exception {
		member.setId(request.getParameter("loginId"));
		member.setPassword(request.getParameter("loginPassword"));
		
		MemberVO loginCheck = memberService.loginProcess(member);
		boolean result = memberService.loginCheck(member, session);
		
		if(result == true) {
			return "�α��� ����";
		} else {
			return "�α��� ����";
		}
	}
	
	/*
	 * �α׾ƿ�
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logout(HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView("main");
		memberService.logout(session);
		return mav;
	}
	
	/*
	 * ���̵� ã��
	 */
	@RequestMapping(value = "/idLook", method = RequestMethod.GET)
	public ModelAndView pageIdlook() {
		ModelAndView mav = new ModelAndView("member/idLook");
		return mav;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/idLook", method = RequestMethod.POST)
	@ResponseBody
	public String idLook(@ModelAttribute MemberVO member) {
		JSONObject json = new JSONObject();
		String id = memberService.idLook(member);
		
		json.put("result", 1);
		json.put("idLook", id);
		return json.toString();
	}
	
	/*
	 *  ����������
	 */
	@RequestMapping(value = "/getMyInfo", method = RequestMethod.GET)
	public String pageMyInfo(HttpSession session) {
		//�α��� ���� Ȯ��
		if(session.getAttribute("userId") != null) {
			return "member/getMyInfo";
		} else {
			return "member/login";
		}
	}
	
	/*
	 * ���������� - ȸ�� ����
	 */
	
	@RequestMapping(value = "/updateInfo", method = RequestMethod.GET)
	public String pageUpdateInfo(HttpSession session) {
		return "member/updateMyInfo";
	}
	
	@RequestMapping(value = "/updateInfo", method = RequestMethod.POST)
	public String updateInfo(@ModelAttribute MemberVO member, HttpSession session) throws Exception {
		System.out.println(member.toString());
		int result = memberService.update(member);
		if(result == 1) {
			logout(session); // ȸ������ �Ϸ�Ǹ� �α׾ƿ�
			return "member/getMyInfo";
		} else {
			return "member/updateMyInfo";
		}
	}
}
