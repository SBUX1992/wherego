package com.tencoding.wherego.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.tencoding.wherego.dto.member.KakaoProfileDto;
import com.tencoding.wherego.dto.member.LogInFormDto;
import com.tencoding.wherego.dto.member.OAuthTokenDto;
import com.tencoding.wherego.dto.member.SignUpFormDto;
import com.tencoding.wherego.handler.exception.CustomRestfulException;
import com.tencoding.wherego.repository.model.Member;
import com.tencoding.wherego.service.member.MemberService;
import com.tencoding.wherego.utils.Define;

@Controller
@RequestMapping("/member")
public class MemberController extends HttpServlet {
	@Autowired
	private MemberService memberService;

	@Autowired
	private HttpSession session;

	// 로그인 페이지 진입
	@GetMapping("/login")
	public String login() {
		// 로그인한채로 url조작으로 로그인 시도시
		if (session.getAttribute(Define.PRINCIPAL) != null) {
			throw new CustomRestfulException("잘못된 요청입니다.", HttpStatus.BAD_REQUEST);
		}

		return "member/login2";
	}

	// 일반 로그인 처리
	@PostMapping("/login")
	public String loginProc(LogInFormDto logInFormDto, HttpServletRequest req) throws ServletException, IOException {
		System.out.println(logInFormDto);
		if (logInFormDto.getId().isEmpty() || logInFormDto.getId() == null) {
			throw new CustomRestfulException("ID를 입력하세요", HttpStatus.BAD_REQUEST);
		}
		if (logInFormDto.getPassword().isEmpty() || logInFormDto.getPassword() == null) {
			throw new CustomRestfulException("패스워드를 입력하세요", HttpStatus.BAD_REQUEST);
		}
		// ================== 폼 입력 유효성 검사 ==================

		Member principal = memberService.logIn(logInFormDto);

		principal.setMemPassword(null);
		// 세션에 등록되는 정보중 비밀번호는 삭제

		session.setAttribute(Define.PRINCIPAL, principal);
		// 세션에 등록

		// 10-17 강중현 권한별 표시내용 수정
		String id = req.getParameter("id");
		System.out.println("memId : " + id);

		HttpSession session = req.getSession();
		System.out.println("memId : " + id);

		if (id != null && id.equals("admin")) {
			// userId가 "admin"인 경우에 해당하는 작업을 수행
			System.out.println("id : " + id);
			session.setAttribute("isAdmin", true);
		} else {
			// 다른 경우에 대한 처리나 오류 메시지를 보여줄 수 있음
			System.out.println("admin 아님");
			session.setAttribute("isAdmin", false);
		}

		return "redirect:/main";
	}

	// 회원가입 페이지 진입
	@GetMapping("/sign-up")
	public String signUp() {
		// 로그인한채로 url조작으로 회원가입 시도시
		if (session.getAttribute(Define.PRINCIPAL) != null) {
			throw new CustomRestfulException("잘못된 요청입니다.", HttpStatus.BAD_REQUEST);
		}

		return "member/signUp2";
	}

	// 일반 회원가입 처리
	@PostMapping("/sign-up")
	public String signUpProc(SignUpFormDto signUpFormDto) {

		if (signUpFormDto.getId().isEmpty() || signUpFormDto.getId() == null) {
			throw new CustomRestfulException("ID를 입력하세요", HttpStatus.BAD_REQUEST);
		}
		if (signUpFormDto.getPassword().isEmpty() || signUpFormDto.getPassword() == null) {
			throw new CustomRestfulException("비밀번호를 입력하세요", HttpStatus.BAD_REQUEST);
		}
		if (signUpFormDto.getName().isEmpty() || signUpFormDto.getName() == null) {
			throw new CustomRestfulException("성명을 입력하세요", HttpStatus.BAD_REQUEST);
		}
		if (signUpFormDto.getNickname().isEmpty() || signUpFormDto.getNickname() == null) {
			throw new CustomRestfulException("별명 입력하세요", HttpStatus.BAD_REQUEST);
		}
		if (signUpFormDto.getEmail().isEmpty() || signUpFormDto.getEmail() == null) {
			throw new CustomRestfulException("이메일을 입력하세요", HttpStatus.BAD_REQUEST);
		}
		if (signUpFormDto.getAddr1().isEmpty() || signUpFormDto.getAddr1() == null) {
			throw new CustomRestfulException("주소를 입력하세요", HttpStatus.BAD_REQUEST);
		}
		if (signUpFormDto.getPhone().isEmpty() || signUpFormDto.getPhone() == null) {
			throw new CustomRestfulException("연락처를 입력하세요", HttpStatus.BAD_REQUEST);
		}
		// ================== 폼 입력 유효성 검사 ==================

		int result = memberService.signUp(signUpFormDto);
		// 쿼리문 던지기

		if (result != 1) { // 인서트 실패했을 경우
			throw new CustomRestfulException("회원가입에 실패했습니다.", HttpStatus.BAD_REQUEST);
		}

		return "redirect:/main";
	}

	@GetMapping("/kakao/callback")
	public String kakaoCallback(@RequestParam String code, Model model) {

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
		// =============================== 토큰 받기 ==========================

		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer " + response.getBody().getAccessToken());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		HttpEntity<MultiValueMap<String, String>> kakaoInfo = new HttpEntity<>(headers2);
		RestTemplate restTemplate2 = new RestTemplate();

		ResponseEntity<KakaoProfileDto> response2 = restTemplate2.exchange("https://kapi.kakao.com/v2/user/me",
				HttpMethod.POST, kakaoInfo, KakaoProfileDto.class);

		KakaoProfileDto kakaoProfileDto = response2.getBody();
		// ============================== 사용자 정보 받기 =============================

		LogInFormDto logInFormDto = new LogInFormDto();
		String id = kakaoProfileDto.getKakaoAccount().getEmail() + "_" + kakaoProfileDto.getId(); // 테이블에 등록하기 위한 id
		logInFormDto.setId(id);

		Member principal = memberService.kakaoLogIn(logInFormDto); // 아이디로 가입되어있는지 확인
		// 로그인처리 시도

		if (principal != null) { // 로그인 정보가 있다면 세션에 정보 등록, 로그인 처리

			principal.setMemPassword(null);
			// 세션에 등록되는 정보중 패스워드는 삭제

			session.setAttribute(Define.PRINCIPAL, principal);
			// 세션에 등록

			return "redirect:/main";

		} else { // 로그인 정보가 없다면 회원가입 페이지로
			model.addAttribute("id", id);
			model.addAttribute("profile", kakaoProfileDto);

			return "member/kakaoSignUp";
		}

	}

	// 카카오 회원가입 처리
	@PostMapping("/kakao-sign-up")
	public String kakaoSignUpProc(SignUpFormDto signUpFormDto) {
		// 로그인한채로 url조작으로 회원가입 시도시
		if (session.getAttribute(Define.PRINCIPAL) != null) {
			throw new CustomRestfulException("잘못된 요청입니다.", HttpStatus.BAD_REQUEST);
		}

		int result = memberService.kakaoSignUp(signUpFormDto);

		if (result != 1) { // 인서트 실패했을 경우
			throw new CustomRestfulException("회원가입에 실패했습니다.", HttpStatus.BAD_REQUEST);
		}

		return "redirect:/member/login";
	}

	// 아이디 중복 체크
	// 조회결과가 null이면(중복이 없다면) 1을 반환
	@RequestMapping("idChk")
	public @ResponseBody int idChk(@RequestParam("mem_id") String mem_id) {
		System.out.println(memberService.idChk(mem_id));
		if (memberService.idChk(mem_id) == null) {
			return 1;
		} else {
			return 0;
		}
	}

	// 닉네임 중복 체크
	// 조회결과가 null이면(중복이 없다면) 1을 반환
	@RequestMapping({ "nickChk", "kakao/nickChk" })
	public @ResponseBody int nickChk(@RequestParam("mem_nickname") String mem_nickname) {
		if (memberService.nickChk(mem_nickname) == null) {
			return 1;
		} else {
			return 0;
		}
	}

	// 로그아웃 처리
	// href="${pageContext.request.contextPath}/member/logout"
	@GetMapping("/logout")
	public String logout() {
		// 로그인 정보없이 url조작으로 로그아웃 시도시
		if (session.getAttribute(Define.PRINCIPAL) == null) {
			throw new CustomRestfulException("잘못된 요청입니다.", HttpStatus.BAD_REQUEST);
		}

		session.invalidate();

		return "redirect:/main";
	}

	// 마이페이지 출력
	@GetMapping("/my-page")
	public String myPage() {
		// 로그인 정보없이 url조작으로 마이페이지 진입했을시
		if (session.getAttribute(Define.PRINCIPAL) == null) {
			throw new CustomRestfulException("잘못된 요청입니다.", HttpStatus.BAD_REQUEST);
		}

		return "member/myPage";
	}

	// 회원탈퇴 페이지 진입
	@GetMapping("/delete")
	public String delete() {
		// 로그인 정보없이 url조작으로 회원탈퇴 페이지 진입했을시
		if (session.getAttribute(Define.PRINCIPAL) == null) {
			throw new CustomRestfulException("잘못된 요청입니다.", HttpStatus.BAD_REQUEST);
		}

		return "member/delete";
	}

	// 회원탈퇴 처리
	@PostMapping("/delete")
	public String deleteProc(LogInFormDto logInFormDto) {
		Member member = (Member) session.getAttribute(Define.PRINCIPAL);
		logInFormDto.setId(member.getMemId());

		boolean isPasswordMatched = memberService.passwordChk(logInFormDto);

		if (isPasswordMatched) {
			int result = memberService.deleteMember(member.getMemUserNo());
			System.out.println("삭제 결과(1이면 성공 0이면 실패) :" + result);
		}

		return "redirect:/main";
	}
}