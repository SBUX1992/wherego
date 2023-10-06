package com.tencoding.wherego.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tencoding.wherego.dto.LogInFormDto;
import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.repository.interfaces.MemberRepository;
import com.tencoding.wherego.repository.model.Member;

@Service
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Transactional
	public void signUp(SignUpFormDto signUpFormDto) {
		signUpFormDto.setPassword(passwordEncoder.encode(signUpFormDto.getPassword()));
		// TODO 비밀번호 해시처리, 가입실패시 익셉션처리
		int result = memberRepository.insert(signUpFormDto);

		System.out.println(result);
	}

//		// TODO 비밀번호 해시처리, 가입실패시 익셉션처리(유효성)
//		int result = memberRepository.insert(signUpFormDto);
//
//		System.out.println(result);
//	}

	public Member logIn(LogInFormDto logInFormDto) {
		Member memberEntity = memberRepository.findById(logInFormDto.getId());
		boolean isPasswordMatched = passwordEncoder.matches(logInFormDto.getPassword(), memberEntity.getMemPassword());
		System.out.println("isPasswordMatched : " + isPasswordMatched);
		
		// TODO 유효성검사
		if (memberEntity == null || memberEntity.getMemId().equals(logInFormDto.getId()) == false) {
			//로그인 실패처리
			System.out.println("계정이 없음");
		}
		
		if (isPasswordMatched == false) {
			// 로그인 실패처리
			System.out.println("비밀번호가 다름");
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
		
		signUpFormDto.setPassword(passwordEncoder.encode("kakao"));
		int result = memberRepository.kakaoInsert(signUpFormDto);

		System.out.println(result);
	}

	public String idChk(String mem_id) {
		return memberRepository.idChk(mem_id);
	}

	public String nickChk(String mem_nickname) {
		return memberRepository.nickChk(mem_nickname);
	}

}