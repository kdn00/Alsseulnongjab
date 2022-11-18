package com.asnj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.asnj.mapper.MemberMapper;
import com.asnj.entity.Member;

@RestController
public class MemberController {
	
	@Autowired
	private MemberMapper mapper;
	
	// 로그인 기능
	@PostMapping("/Login.do")
	public String Login(Member mem, HttpServletRequest request) {
		// 입력받은 id, pw와 같은 정보가 있는지 확인하고 그 값에 해당하는
		// 회원의 정보를 가져온다.
		Member loginMember = mapper.memberLogin(mem);
		
		// 만약에 회원의 정보를 가져왔다면, 즉 로그인 할 회원의 정보가 있다면
		// 세션에 저장
		if(loginMember != null) {
			// 1. 세션 객체 생성
			HttpSession session = request.getSession();
			
			// 2. 세션에 값 저장(회원정보 데이터를 객체 바인딩)
			session.setAttribute("loginMember", loginMember);
		}
		return "redirect:/Loginpage.do";
	}
	
	// 회원가입 기능 --> 라디오 박스 관련으로 공부해야 함
	@PostMapping("/Join.do")
	public String Join(Member mem) {
		
		Member joinMember = mapper.memberJoin(mem);
		
		if(joinMember != null) {
			return "redirect:/Mainpage.do";
		} else {
			System.out.println("회원가입 실패!");
			return "redirect:/Joinpage.do";	
		}
	}
	
	// 회원 목록
	@GetMapping("/MemberList")
	public List<Member> MemberList() {
		List<Member> list = mapper.memberSelect();
		
		return list;
	}
	
	// 로그아웃 기능
	@RequestMapping("/Logout.do")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginMember");
		return "redirect:/Mainpage.do";
	}
	
	// 회원가입 기능
}
