package com.tencoding.wherego.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.repository.interfaces.MemberRepository;

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
}
