package com.tencoding.wherego.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"/payment",""})
public class PaymentController {
	
	@GetMapping("/main")
	public String main() {
		System.out.println("PaymentController");
		return "main";
	}
	
	@GetMapping("/payment")
	public String payment() {
		System.out.println("payment");
		return "payment/payment";
	}
}

