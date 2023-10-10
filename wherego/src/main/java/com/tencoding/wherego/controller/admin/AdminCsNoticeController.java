package com.tencoding.wherego.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;
/**
 * 강중현
 * 2023-10-10
 * admin cs 공지
 */

@Log4j2
@Controller
@RequestMapping("admin/cs/notice")
public class AdminCsNoticeController {

	
	// 공지사항 list
	@GetMapping("/list")
	public String list() {
		log.info("admin notice list 페이지 접속");
		return "admin/cs/notice/list";
	}
	
	
	// 공지사항 view
	@GetMapping("/view")
	public String view() {
		log.info("admin notice view 페이지 접속");
		return "admin/cs/notice/view";
	}
	
	
	// 공지사항 write
	@GetMapping("/write")
	public String write() {
		log.info("admin notice write 페이지 접속");
		return "admin/cs/notice/write";
	}
	
	
	// 공지사항 modify
	@GetMapping("/modify")
	public String modify() {
		log.info("admin notice modify 페이지 접속");
		return "admin/cs/notice/modify";
	}
}
