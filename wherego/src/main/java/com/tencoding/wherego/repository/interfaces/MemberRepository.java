package com.tencoding.wherego.repository.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

<<<<<<< HEAD
=======

import com.tencoding.wherego.dto.SignUpFormDto;

>>>>>>> a36d500e43f95f738f3f1dde3bd23a4674bd06d6
import com.tencoding.wherego.dto.LogInFormDto;
import com.tencoding.wherego.dto.MemberListDto;
import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.repository.model.Member;
<<<<<<< HEAD
=======

>>>>>>> a36d500e43f95f738f3f1dde3bd23a4674bd06d6

@Mapper
public interface MemberRepository {
	// 회원가입
	public int insert(SignUpFormDto signUpFormDto);
<<<<<<< HEAD
	
=======



>>>>>>> a36d500e43f95f738f3f1dde3bd23a4674bd06d6
	// 로그인
	public Member findByIdAndPassword(LogInFormDto logInFormDto);

	// 아이디로 계정확인
	public Member findById(String id);
	// 회원정보 수정

	// 아이디 찾기

	// 비밀번호 찾기
<<<<<<< HEAD
	
	
	public List<MemberListDto> getMemberList();
=======

>>>>>>> a36d500e43f95f738f3f1dde3bd23a4674bd06d6
}
