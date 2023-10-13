package com.tencoding.wherego.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"/payment",""})
public class PaymentController {
	
	
	
	
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
	public String charge() {
		System.out.println("cancel"); 
		return "payment/cancel";
	}
	
}

