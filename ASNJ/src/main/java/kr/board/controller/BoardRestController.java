package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;

// 전에 POJO라는 것을 알려주기 위해 @Controller 사용
// 이 컨트롤러는 json방식의 통신을 전문적으로 하는 컨트롤러 역할을 함...그래서 어노테이션 @RestController 사용
@RestController
public class BoardRestController {

	// 만들어놓은 mapper객체 불러오기
	// 의존성 주입(DI) -> @Autowired
	@Autowired
	private BoardMapper mapper;
	
	// 게시판에 대한 요청을  다 board로 주고 받고 하는데~ 어떤 내용을 실행할지 구분하는 것은  요청 보내는 방식
	// get,post,put(update),delete
	// RESTful 규약..

	// ajax에서 get방식으로 보내오고 있음
	// @ResponseBody를 쓰지 않아도 @RestController가 알아서 데이터 가져옴..
	@GetMapping("/board")
	public List<Board> boardAjaxList() {
		// 1) DB에서 게시판 리스트를 가져오기
		List<Board> list = mapper.boardList();

		// 2) 가져온 데이털르 JSON 형식으로 바꿔줌
		// 2-1) 이전엔 Dynamic웹프로젝트여서 Gson.jar파일 넣어서
		// Gson 이 api가 json형식을 처리할 수 있게 함(toJson)
		// Maven프로젝트였음 pom.xml에 dependency를 넣어서 처리 가능
		// 2-2) return에다가 데이터 돌려줄 때 jsp가 아님을 표시 @ResponseBody
		// pom.xml에 jackson 설정

		// 3) JSON 데이터를 보내줌..ajax로 보내줌
		// jsp로 이동 안함..

		// return에는 1)jsp 2) redirect:/ 요청 3)데이터를 넣어줄 수 있음..
		return list;
	}
	
	// post방식의 요청
	// 스프링이 파라미터 수집을 알아서 해오는데 넘어올 때 Board객체의 property와 넘어오는 name값이 일치하면~
	@PostMapping("/board")
	public void boardAjaxInsert(Board vo) {
		mapper.boardInsert(vo);
	}
	
	@DeleteMapping("/board/{idx}")
	public void boardAjaxDelete(@PathVariable int idx) {
		mapper.boardDelete(idx);
	}
	
	@PutMapping("/board")
	// 2) JSON형식으로 데이터를 받아오기 때문에 그냥 파라미터가 아님을 @RequestBody가 표시..
	public void boardAjaxUpdate(@RequestBody Board vo) {//idx,content가 넘어오면 Board로 파라미터 수집..
		// 1) mapper 일 시켜줘야 하는데.. 전에 만들었던 mapper.xml의 update태그에 담긴 SQL문은 title까지 수정이였음..
		// content만 바꿔주는 메소드를 새로 만들어야 함
		mapper.boardContentUpdate(vo);
	}
	
	@GetMapping("/updateCount/{idx}")
	public Board updateCount(@PathVariable int idx) {
		mapper.updateCount(idx);
		// DB에 있는 조회수를 가져와 갱신해야 하므로 게시글 내용 불러오는 mapper 메소드 일 시켜서 반환 받아야 함
		Board vo = mapper.boardContent(idx);
		return vo;
	}
}
