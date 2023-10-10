package com.tencoding.wherego.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tencoding.wherego.dto.LogInFormDto;
import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.handler.exception.CustomRestfulException;
import com.tencoding.wherego.repository.interfaces.MemberRepository;
import com.tencoding.wherego.repository.model.Member;

@Service
public class MemberService {

	@Autowired
	private MemberRepository memberRepository;
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Transactional
	public int signUp(SignUpFormDto signUpFormDto) {
		signUpFormDto.setPassword(passwordEncoder.encode(signUpFormDto.getPassword()));
		// 입력된 비밀번호 해시처리

		int result = memberRepository.insert(signUpFormDto);
		// 인서트 쿼리문 던지고 결과를 인트로 받음

		if (result != 1) { // 인서트 실패했을 경우
			throw new CustomRestfulException("회원가입에 실패했습니다.", HttpStatus.BAD_REQUEST);
		}

		return result;
	}

	// 일반 로그인 처리
	public Member logIn(LogInFormDto logInFormDto) {
		System.out.println(logInFormDto.getId());
		
		Member memberEntity = memberRepository.findById("test3");
		// 계정 정보 mySql에서 셀렉트 조회
		if (memberEntity == null) { // 조회된 계정이 없을 경우
			throw new CustomRestfulException("계정이 없습니다.", HttpStatus.BAD_REQUEST);
		}

		// sql에서 해시화된 암호를 비교
		boolean isPasswordMatched = passwordEncoder.matches(logInFormDto.getPassword(), memberEntity.getMemPassword());
		System.out.println("isPasswordMatched : " + isPasswordMatched);

		if (isPasswordMatched == false) { // 매칭이 안됐을 경우
			throw new CustomRestfulException("비밀번호가 잘못되었습니다.", HttpStatus.BAD_REQUEST);
		}

		return memberEntity;
	}

	// 카카오 로그인 처리
	public Member kakaoLogIn(LogInFormDto logInFormDto) {
		Member memberEntity = memberRepository.findById(logInFormDto.getId());
		// 계정 정보 mySql에서 셀렉트 조회

		return memberEntity;
	}

	// 카카오 회원가입 처리
	@Transactional
	public int kakaoSignUp(SignUpFormDto signUpFormDto) {
		// TODO 비밀번호 해시처리, 가입실패시 익셉션처리(유효성)

		signUpFormDto.setPassword(passwordEncoder.encode("kakao"));
		int result = memberRepository.kakaoInsert(signUpFormDto);

		return result;
	}

	// 아이디 체크
	public String idChk(String mem_id) {
		// mem_id를 찾는 쿼리문 던지고 String으로 반환
		return memberRepository.idChk(mem_id);
	}

	public String nickChk(String mem_nickname) {
		// mem_nickname을 찾는 쿼리문 던지고 String으로 반환
		return memberRepository.nickChk(mem_nickname);
	}

}