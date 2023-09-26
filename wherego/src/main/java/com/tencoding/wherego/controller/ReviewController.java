package com.tencoding.wherego.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/review")
public class ReviewController {

	@GetMapping("review")
	public String review() {
		log.info("view 페이지 ...");
		return "review/review";
		
	}
}
