package com.asnj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asnj.entity.Member;
import com.asnj.mapper.MemberMapper;


// 로그인, 로그아웃, 메인 페이지 구성, 회원 관리, 회원정보 수정, 회원탈퇴 등 진행할 컨트롤러
@Controller
public class HomeController {
	
	@Autowired
	private MemberMapper mapper;
	
	// 페이지 이동
	@GetMapping("/Main.do")
	public String Main() {		
		return "main";
	}
	
	@GetMapping("/Logingo.do")
	public String Logingo() {		
		return "login";
	}
	
	
	// 로그인
	@PostMapping("/Login.do")
	public String Login(Member mem, HttpServletRequest request) {
		
		Member loginMember = mapper.memberLogin(mem);
		
		if(loginMember != null) {
			// 1. 세션 객체 생성
			HttpSession session = request.getSession();
			
			// 2. 세션에 값 저장(회원정보 데이터를 객체 바인딩)
			session.setAttribute("loginMember", loginMember);
		}
		
		return "redirect:/Main.do";
	}
	
	// 로그아웃
	@RequestMapping("/Logout.do")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginMember");
		// 메인 페이지로 가는 명령어 바뀌면 바꿀 것
		return "redirect:/Main.do";
	}

}
