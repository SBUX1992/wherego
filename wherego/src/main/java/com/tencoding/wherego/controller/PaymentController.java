package com.tencoding.wherego.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tencoding.wherego.dto.MemberListDto;
import com.tencoding.wherego.dto.accommodation.AccommodationDto;
import com.tencoding.wherego.dto.payment.PaymentDto;

import com.tencoding.wherego.repository.interfaces.accommodation.AccommodationRepository;

import com.tencoding.wherego.repository.interfaces.member.MemberRepository;

import com.tencoding.wherego.repository.interfaces.payment.PaymentRespository;
import com.tencoding.wherego.service.accommodation.AccommodationService;
import com.tencoding.wherego.service.payment.PaymentService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping({"/payment",""})
public class PaymentController {
	@Autowired
	private AccommodationService accommodationService;
	
	@Autowired
	private AccommodationRepository accommodationRepository;
	
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private PaymentRespository paymentRespository;
	
	@Autowired
	private MemberRepository memberRepository;
	@Autowired
	SqlSession session;
	
	
	
//	@GetMapping("/main")
//	public String main() {
//		System.out.println("main page");
//		return "main";
//	}
	
	@GetMapping("/payment")
	public String payment() {
		System.out.println("payment");
		return "payment/payment";
	}
	
	@GetMapping("/list")
	public String detatil() {
		System.out.println("detail"); 
		return "accommodation/acc_list";
	}
	@GetMapping("/cancel")
	public String cancel(Model model) {
		List<PaymentDto> paymentList = paymentService.getPayList();
				model.addAttribute("paylist", paymentList);
		System.out.println("cancel"); 
		return "payment/cancel";
	}
	/***************** 결제 신청 페이지*********************/
	@RequestMapping("payment/payment")
	public String application(@RequestParam HashMap<String, String> param, Model model) {
		
		List<AccommodationDto> accDtoList = accommodationService.getAccList();
		System.out.println("accDtoList");

		model.addAttribute("roomCount",((Model) session).getAttribute("roomCount"));
		model.addAttribute("accList", accDtoList);
		
		// payment
		log.info("@# Controller: application");
		PaymentDto party = paymentRespository.getPaymentrInfo(param);
		model.addAttribute("party", party);

		log.info("@# Controller: application ==>" + party);
		return "shop/application";
	}
	
	/***************** 결제 신청 진행*********************/
	@RequestMapping("payment/application_process")
	public String application_process(@RequestParam HashMap<String,String> param) {
		log.info("@# Controller: application_process");
		log.info(""+param);
		paymentRespository.application_process(param);
		
		if(param.get("a_payment").equals("무통장입금")) {
			return "redirect:application_complete_bank?mem_id="+param.get("mem_id");
		}else {
			return "redirect:application_complete_kakao?mem_id="+param.get("mem_id");
		}
	}
//	=============== 신청 완료 페이지(무통장 입금) ===============
	@RequestMapping("payment/application_complete_bank")
	public String application_complete(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# Controller: application_complete_bank");

		// 결제 정보 가져오기
		PaymentDto pay = paymentRespository.getPaymentrInfo(param);
		model.addAttribute("pay", pay);

		// 파티장 정보 가져오기
		MemberListDto master = memberRepository.getMemberInfo(pay.getMem_id());
		model.addAttribute("master", master);
		return "payment/application_complete_bank";
	}

//	=============== 신청 완료 페이지(카카오) ===============
	@RequestMapping("payment/application_complete_kakao")
	public String application_complete_kakao(@RequestParam HashMap<String, String> param, Model model) {
		// 유저 정보 가져오기
		MemberListDto member =memberRepository.getMemberInfo(param);
		model.addAttribute("member", member);

		log.info("@# Controller: application_complete_kakao");
		return "payment/application_complete_kakao";
	}

}

