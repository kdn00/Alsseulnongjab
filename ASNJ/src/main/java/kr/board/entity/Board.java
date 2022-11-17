package kr.board.entity;

// 게시판이라는 객체(Object) --> 번호,제목,내용,작성자,작성일,조회수
public class Board {
	// VO의 이름은 테이블 이름과 일치시켜줌
	
	//property ==> 프로퍼티 ==> 속성
	
	private int idx;
	private String title;
	private String content;
	private String writer;
	private String indate;
	private int count;
	private String memId;
	// 새로운 컬럼 추가했으니 getter,setter 추가하기
	// SQL문 확인하기
	
	
	//getter,setter 만들기..
	public int getIdx() {
		return idx;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	

}
