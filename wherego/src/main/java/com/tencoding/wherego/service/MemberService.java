package com.tencoding.wherego.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.repository.interfaces.MemberRepository;

import com.tencoding.wherego.dto.LogInFormDto;
import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.repository.interfaces.MemberRepository;
import com.tencoding.wherego.repository.model.Member;


@Service
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;

	@Transactional
	public void signUp(SignUpFormDto signUpFormDto) {

		// TODO 비밀번호 해시처리, 가입실패시 익셉션처리
		int result = memberRepository.insert(signUpFormDto);
		
		System.out.println(result);
	}

		// TODO 비밀번호 해시처리, 가입실패시 익셉션처리(유효성)
		int result = memberRepository.insert(signUpFormDto);

		System.out.println(result);
	}

	public Member logIn(LogInFormDto logInFormDto) {
		Member memberEntity = memberRepository.findByIdAndPassword(logInFormDto);
		// TODO 유효성검사
		if (memberEntity == null || memberEntity.getMemId().equals(logInFormDto.getId()) == false) {
			System.out.println("계정이 없음");
		}

		return memberEntity;
	}
	
	public Member kakaoLogIn(LogInFormDto logInFormDto) {
		Member memberEntity = memberRepository.findById(logInFormDto.getId()); // sql 쿼리문 던져봄
		// TODO 유효성검사
		if (memberEntity == null || memberEntity.getMemId().equals(logInFormDto.getId()) == false) {
			System.out.println("계정이 없음");
		}

		return memberEntity;
	}

	
	@Transactional
	public void kakaoSignUp(SignUpFormDto signUpFormDto) {
		// TODO 비밀번호 해시처리, 가입실패시 익셉션처리(유효성)
		int result = memberRepository.insert(signUpFormDto);

		System.out.println(result);
	}

}
