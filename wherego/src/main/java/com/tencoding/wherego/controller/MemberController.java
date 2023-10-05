package com.tencoding.wherego.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.tencoding.wherego.dto.LogInFormDto;
import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.repository.model.Member;
import com.tencoding.wherego.service.MemberService;
import com.tencoding.wherego.utils.Define;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	

	
	@Autowired
	private HttpSession session;

	@GetMapping("/login")
	public String login() {
		return "member/login";
	}

	@GetMapping("/sign_up")
	@PostMapping("/login")
	@ResponseBody // 메인페이지가 생기면 교체
	public Member loginProc(LogInFormDto logInFormDto) {
		// TODO : 유효성검사

		Member principal = memberService.logIn(logInFormDto);
		principal.setMemPassword(null);
		// 3. 쿠키 + 세션
		session.setAttribute(Define.PRINCIPAL, principal);

		return principal;
//		return "member/login";
	}

	@GetMapping("/sign-up")
	public String signUp() {
		return "member/signUp";
	}

	@PostMapping("/sign_up")
	public String signUpProc(SignUpFormDto signUpFormDto) {
		// TODO : 유효성검사
		
		memberService.signUp(signUpFormDto);
		
		return "redirect:/member/login";
	}


	@GetMapping("/kakao/callback")
	@ResponseBody // 이녀셕은 data 반환 명시
	public String kakaoCallback(@RequestParam String code) {
		System.out.println("메서드 동작");

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "ae138cb481abfa831e99189dc79e66b1");
		params.add("redirect_uri", "http://localhost:8080/wherego/member/kakao/callback");
		params.add("code", code);

		RestTemplate restTemplate = new RestTemplate();

		// HttpEntity 결합 (헤더 + 바디)
		HttpEntity<MultiValueMap<String, String>> reqMes = new HttpEntity<>(params, headers);

		ResponseEntity<String> response = restTemplate.exchange("https://kauth.kakao.com/oauth/token", HttpMethod.POST,
				reqMes, String.class);

		return response.toString();
	}

//	@GetMapping("/search")
//	public String search() {
//		System.out.println(22222222);
//		return "member/search";
//	}

}
