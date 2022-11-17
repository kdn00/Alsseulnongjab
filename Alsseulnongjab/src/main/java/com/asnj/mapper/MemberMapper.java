package com.asnj.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.asnj.entity.Member;

@Mapper
public interface MemberMapper {
	
	public Member memberLogin(Member mem);
	
}
