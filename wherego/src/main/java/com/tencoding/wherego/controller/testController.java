package com.tencoding.wherego.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class testController {


	
	@GetMapping("check1")
	public String check() {
		System.out.println("check");
		return "accomodation/acc_list";
		

	}
}
