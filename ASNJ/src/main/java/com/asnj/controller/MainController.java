package com.asnj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.asnj.mapper.MemberMapper;

@Controller
public class MainController {
	
	// 페이지 이동
	// 메인페이지 -> json 받아오려면 restcontroller 페이지에서 따로 지정해야 함
	// 메인 페이지에 비동기 통신이 들어가게 바뀌면 컨트롤러 타입을 변경하거나 이동할 예정
	@GetMapping("/Mainpage.do")
	public String Main() {
		return "main";
	}
	
	@GetMapping("/Loginpage.do")
	public String Loginpage() {
		return "login";
	}
	
	@GetMapping("/Joinpage.do")
	public String Joinpage() {
		return "join";
	}
	
	

}
