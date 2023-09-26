package com.tencoding.wherego.repository.interfaces;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.SignUpFormDto;

@Mapper
public interface MemberRepository {
	// 회원가입
	public int insert(SignUpFormDto signUpFormDto);
}
