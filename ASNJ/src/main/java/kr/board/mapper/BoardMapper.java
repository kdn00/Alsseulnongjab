package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import kr.board.entity.Board;
import kr.board.entity.Member;

// 우리가 알고 있는 DAO와 같은 일을 하는 것을 알려주는 주석
// @Repository
// myBatis에서 mapper를 인식하는 주석
@Mapper
//0. Mapper는 인터페이스 파일로 만든다..
public interface BoardMapper {
	// 자바 코드와 SQL문을 따로 관리
	// 이 둘을 연결해주는 의미로 Mapper라는 의미가 강해져 dao보다 mapper라는 표현을 사용

	// DAO에서도 join,login...메소드 만들기
	// dao에서는 SqlSessionFactory 만들어서 커넥션을 유지하고 있었음..
	// DB연결은 스프링에서 알아서 만들어주고 있어 굳이 만들 필요가 없음..
	// 스프링에서는 별도의 xml파일에서 DB 커넥션을 이루고 있음..

	// 1. BoardController의 메소드와 이름을 일치시켜 만든다..
	// select 결과물로 xml에서 resultType과 같은 타입으로 메소드 리턴타입을 만들어줘야 함
	public List<Board> boardList();
	// SQL문은 어디에? XML에 만듬..
	// 쿼리 연결 위해 MyBatis 이용..
	// 메소드 안에 적을 내용 없음.. ~~> public void boardList(); --> 추상메소드
	// 인터페이스에서는 구현부 없이 끝남..
	// 그러면 BoardMapper는 interface로 만들어야 함..	

	public void boardInsert(Board vo);

	public Board boardContent(int idx);
	
	public void boardUpdate(Board vo);
	
	// @Delete("SQL문") -> 절대 mapper.xml에서 또 만들지 않아야함
	// 어노테이션으로 sql문 관리하면 xml 필요하지 않음...
	public void boardDelete(int idx);
	
	@Update("update board set content=#{content} where idx=#{idx}")
	public void boardContentUpdate(Board vo);

	@Update("update board set count=count+1 where idx=#{idx}")
	public void updateCount(int idx);

	public Member memberLogin(Member mvo);	

}
