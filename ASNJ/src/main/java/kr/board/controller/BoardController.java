package kr.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.entity.Member;
import kr.board.mapper.BoardMapper;

// 그냥 클래스가 아닌 POJO 역할을 하는 컨트롤러임을 알려주는 주석(annotation)
//	스프링 초창기 --> @Component라고 쓰기도 함
@Controller
public class BoardController {
	
	//의존성 주입(DI)
	@Autowired
	private BoardMapper mapper;
	
	//@RequestMapping으로도 되고  get방식으로 넘어오니까~ @GetMapping <-> @PostMapping
	@GetMapping("/boardAjaxMain.do")
	public String boardAjaxMain() {
		return "basic";
	}
	
	@PostMapping("/Login.do")
	// form태그에 담겨있는  memId,memPw 가 넘어옴 --> 파라미터 수집
	public String Login(Member mvo, HttpServletRequest request) {
		// 입력받은 id,pw와 같은 정보가 있는지 확인하고 그 값에 해당하는 회원 정보를 가져옴
		Member loginMember = mapper.memberLogin(mvo);
		// 만약 회원 정보를 가져왔다면, 즉 로그인 할 회원 정보가 있다면
		if(loginMember != null) {
			//1. 세션 객체 생성
			HttpSession session = request.getSession();
			//2. 세션에  값 저장(회원정보 데이터를 객체 바인딩)
			session.setAttribute("loginMember", loginMember);
		}
		return "redirect:/boardAjaxMain.do";
	}
	
	@RequestMapping("/Logout.do")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginMember");
		
		return "redirect:/boardAjaxMain.do";
	}
	
	
	
	
	
	
	
	
	
	
	
}
