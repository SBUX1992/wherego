package com.tencoding.wherego.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tencoding.wherego.dto.payment.PaymentDto;
import com.tencoding.wherego.service.payment.PaymentService;

@Controller
@RequestMapping({"/payment",""})
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	
	
	@GetMapping("/main")
	public String main() {
		System.out.println("main page");
		return "main";
	}
	
	@GetMapping("/payment")
	public String payment() {
		System.out.println("payment");
		return "payment/payment";
	}
	
	@GetMapping("/detail")
	public String detatil() {
		System.out.println("detail"); 
		return "accomodation/detail";
	}
	@GetMapping("/cancel")
	public String cancel(Model model) {
		List<PaymentDto> paymentList = paymentService.getPayList();
				model.addAttribute("paylist", paymentList);
		System.out.println("cancel"); 
		return "payment/cancel";
	}
	
}

