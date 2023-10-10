package com.tencoding.wherego.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

/**
 * 강중현 2023-10-10 admin cs qna
 */

@Log4j2
@Controller
@RequestMapping("admin/cs/qna")
public class AdminCsQnaController {

	// admin qna list
	@GetMapping("/list")
	public String list() {
		log.info("admin qna list 페이지 접속");
		return "admin/cs/qna/list";
	}

	// qna view
	@GetMapping("/view")
	public String view() {
		log.info("admin qna view 페이지 접속");
		return "admin/cs/qna/view";
	}



}
