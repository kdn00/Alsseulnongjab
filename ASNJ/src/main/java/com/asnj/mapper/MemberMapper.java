package com.asnj.mapper;

import java.util.List;

import com.asnj.entity.Member;

public interface MemberMapper {

	// 로그인
	Member memberLogin(Member mem);
	
	// 회원가입
	Member memberJoin(Member mem);
	
	// 회원정보 수정
	Member memberUpdate(Member mem);
	
	// 회원 탈퇴 및 회원 삭제
	Member memberDelete(Member mem);
	
	// 회원 검색
	Member memberSelect(Member mem);

	List<Member> memberSelect();
}
