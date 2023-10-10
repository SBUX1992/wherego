package com.tencoding.wherego.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class testController {

@GetMapping("/list")
public String list() {
	return "accommodation/list";
}
}
