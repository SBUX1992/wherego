package com.tencoding.wherego.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tencoding.wherego.dto.admin.AdminCsNoticeDto;
import com.tencoding.wherego.repository.model.admin.AdminCsNotice;
import com.tencoding.wherego.service.admin.AdminCsNoticeService;

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
	
	@Autowired  // DI 처리 
	private HttpSession session;

	@Autowired
	private AdminCsNoticeService adminCsNoticeService;
	 
	
	// 공지사항 list
	@GetMapping("/list")
	public String list(Model model) {
		log.info("admin notice list 페이지 접속");
//		AdminCsNotice adminCsNotice = (AdminCsNotice)session.getAttribute(Define.PRINCIPAL);
		
		// 공지 목록 가져오기
//		List<AdminCsNotice> noticeList = adminCsNoticeService.readAdminCsNoticeList(adminCsNotice.getMemId());
		List<AdminCsNotice> noticeList = adminCsNoticeService.readAdminCsNoticeList();
//		List<AdminCsNotice> noticeList = adminCsNoticeService.readAdminCsNoticeList("관리자");
		if(noticeList.isEmpty()) {
			model.addAttribute("noticeList", null);
		}else {
			model.addAttribute("noticeList", noticeList);
		}
		// list page 값 받는지 확인
//		System.out.println(noticeList.get(0));
		return "admin/cs/notice/list";
	}
	
	
	
	// 공지사항 view
	@GetMapping("/view/{num}")
	public String view(@PathVariable int num, Model model) {
		log.info("admin notice view 페이지 접속");
		//AdminCsNotice adminCsNotice = (AdminCsNotice)session.getAttribute(Define.PRINCIPAL);
//		System.out.println("admincsno"+ adminCsNotice);
		
		//List<AdminCsNotice> noticeView = adminCsNoticeService.readAdminCsNotice(adminCsNotice.getNo());
		List<AdminCsNotice> noticeView = adminCsNoticeService.readAdminCsNotice(num);
		model.addAttribute("noticeView", noticeView);
		
//		if(noticeView.isEmpty()) {
//			model.addAttribute("noticeView", null);
//		}else {
//			model.addAttribute("noticeView", noticeView);
//		}
		
		return "admin/cs/notice/view";
	}
	
	
	// 공지사항 write
	@GetMapping("/write")
	public String write() {
		log.info("admin notice write 페이지 접속");
//		AdminCsNotice adminCsNotice = (AdminCsNotice)session.getAttribute("principal");
		

//		System.out.println(noticeList.get(0));
		return "admin/cs/notice/write";
	}
	
	
	@PostMapping("/write")
	public String writeProc(AdminCsNoticeDto adminCsNoticeDto) {
		adminCsNoticeDto.setMemId("admin");
//		AdminCsNotice adminCsNotice = (AdminCsNotice)session.getAttribute(Define.PRINCIPAL);
		System.out.println("1. controller" + adminCsNoticeDto);
		
		adminCsNoticeService.writeNotice(adminCsNoticeDto);
		System.out.println("2. controller" + adminCsNoticeDto);
		
		return "redirect:/admin/cs/notice/list";
	}
	
	
	// 공지사항 modify
	@GetMapping("/modify")
	public String modify() {
		log.info("admin notice modify 페이지 접속");
		return "admin/cs/notice/modify";
	}
	
}
