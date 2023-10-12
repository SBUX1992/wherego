package com.tencoding.wherego.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping("/header2")
	@PreAuthorize("isAnnonymus")
	public String TempHeader() {
		return "header2";
	}
}
