create table board(
	idx int not null auto_increment,
	title varchar(1000) not null,
	content varchar(3000) not null,
	writer varchar(1000) not null,
	indate  datetime not null default now(),
	count int not null default 0,
	primary key(idx)

)

-- int : 숫자형
-- auto_increment : 자동으로 1씩 증가하며 들어가는 키워드
-- datetime : 날짜 시간 넣어주는 타입
-- default : 따로 값을 넣어주지 않아도 초기값이 들어감
-- now() : sql 프로그램 안에서 현재시간을 넣어주는 함수


select * from board;

-- 임의로 내용 넣기 auto_increment와 default 있는 거 빼고
INSERT INTO BOARD (TITLE, CONTENT, WRITER)
  VALUES ('스프링 게시판', '오늘 처음 써봅니다..', '박승현');
  
select * from board;

--delete from board where idx='3';

--INSERT INTO BOARD (TITLE, CONTENT, WRITER)
--  VALUES ('둘리 게시판', '경보!!!..', '박승현');

--alter table board auto_increment= 1;

--update board set idx='4' where title='으후루꾸꾸루후으';


-- 회원정보 테이블 생성
-- memId,memPw,memeName
create table member(
memId varchar(50) not null,
memPw varchar(50) not null,
memName varchar(50) not null,
primary key(memId)
)

select * from member;

insert into member values("test","1234","박승현");
insert into member values("admin","1234","관리자");
insert into member values("smhrd","1234","스인개");

-- board테이블에  memId 컬럼 추가
alter table board add memId varchar(50);
select * from board;
select * from member;

--alter table board drop primary key;

--alter table board add numIdx int not null auto_increment primary key first;



