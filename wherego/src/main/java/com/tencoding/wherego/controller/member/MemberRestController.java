package com.tencoding.wherego.controller.member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.tencoding.wherego.dto.member.KakaoProfileDto;
import com.tencoding.wherego.dto.member.MyPapePaymentDto;
import com.tencoding.wherego.dto.member.OAuthTokenDto;
import com.tencoding.wherego.repository.interfaces.member.MemberRepository;
import com.tencoding.wherego.repository.model.Member;
import com.tencoding.wherego.utils.Define;

@RestController
public class MemberRestController {

	@Autowired
	HttpSession session;
	
	@Autowired
	MemberRepository memberRepository;

	@GetMapping("member/getData")
	public List<MyPapePaymentDto> getData() {
		Member member = (Member) session.getAttribute(Define.PRINCIPAL);
		System.out.println(member);
			
		// 로그인 정보없이 url조작으로 마이페이지 진입했을시
		List<MyPapePaymentDto> list = memberRepository.selectMyPapePayment(member.getMemUserNo());
			

		return list;
	}

	// 액세스 토큰 받기
	public OAuthTokenDto getKakaoAccesToken(@RequestParam String code) {
		// code = 인가 코드
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

		ResponseEntity<OAuthTokenDto> response = restTemplate.exchange("https://kauth.kakao.com/oauth/token",
				HttpMethod.POST, reqMes, OAuthTokenDto.class);

		return response.getBody();
		// =============================== 토큰 받기 ==========================

	}

	// 카카오 사용자 프로필 받기
	public KakaoProfileDto getKakaoUserInfo(OAuthTokenDto authTokenDto) {

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + authTokenDto.getAccessToken());
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		HttpEntity<MultiValueMap<String, String>> kakaoInfo = new HttpEntity<>(headers);
		RestTemplate restTemplate2 = new RestTemplate();

		ResponseEntity<KakaoProfileDto> response2 = restTemplate2.exchange("https://kapi.kakao.com/v2/user/me",
				HttpMethod.POST, kakaoInfo, KakaoProfileDto.class);

		return response2.getBody();
	}

}
