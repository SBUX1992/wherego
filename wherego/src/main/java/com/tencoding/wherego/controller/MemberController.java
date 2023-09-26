package com.tencoding.wherego.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}

	@GetMapping("/sign_up")
	public String signUp() {
		return "member/signUp";
	}

	@PostMapping("/sign_up")
	public String signUpProc(SignUpFormDto signUpFormDto) {
		// TODO : 유효성검사
		
		memberService.signUp(signUpFormDto);
		
		return "redirect:/member/login";
	}

}
