package com.tencoding.wherego.repository.interfaces.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.MemberListDto;
import com.tencoding.wherego.dto.member.LogInFormDto;
import com.tencoding.wherego.dto.member.SignUpFormDto;
import com.tencoding.wherego.repository.model.Member;

@Mapper
public interface MemberRepository {
	// 회원가입
	public int insert(SignUpFormDto signUpFormDto);

	// 카카오회원가입
	public int kakaoInsert(SignUpFormDto signUpFormDto);

	// 로그인
	public Member findByIdAndPassword(LogInFormDto logInFormDto);

	// 아이디로 계정확인
	public Member findById(String id);

	// 회원정보 수정

	// 아이디 찾기

	// 비밀번호 찾기

	public List<MemberListDto> getMemberList();

	// 아이디 중복 체크, 사용처 : 회원가입 폼
	public String idChk(String id);

	// 닉네임 중복 체크, 사용처 : 회원가입 폼
	public String nickChk(String nickname);

	// 회원 탈퇴
	public int deleteMember(int no);
}
