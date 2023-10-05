package com.tencoding.wherego.repository.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.LogInFormDto;
import com.tencoding.wherego.dto.MemberListDto;
import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.repository.model.Member;

@Mapper
public interface MemberRepository {
	// 회원가입
	public int insert(SignUpFormDto signUpFormDto);



	// 로그인
	public Member findByIdAndPassword(LogInFormDto logInFormDto);

	// 아이디로 계정확인
	public Member findById(String id);
	// 회원정보 수정

	// 아이디 찾기

	// 비밀번호 찾기
	
	
	public List<MemberListDto> getMemberList();

}
