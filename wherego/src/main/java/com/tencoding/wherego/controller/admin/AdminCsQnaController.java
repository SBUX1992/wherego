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

import com.tencoding.wherego.dto.admin.AdminCsQnaDto;
import com.tencoding.wherego.repository.model.admin.AdminCsQna;
import com.tencoding.wherego.service.admin.AdminCsQnaService;

import lombok.extern.log4j.Log4j2;

/**
 * 강중현 
 * 2023-10-10 
 * admin cs qna
 */

@Log4j2
@Controller
@RequestMapping("admin/cs/qna")
public class AdminCsQnaController {

	@Autowired  // DI 처리 
	private HttpSession session;
	
	@Autowired
	private AdminCsQnaService adminCsQnaService;
	
	// admin qna list
	@GetMapping("/list")
	public String list(Model model) {
		log.info("admin qna list 페이지 접속");
//		AdminCsQna adminCsQna = (AdminCsQna)session.getAttribute(Define.PRINCIPAL);
		
		List<AdminCsQna> qnaList = adminCsQnaService.readAdminCsQnaList();
//		List<AdminCsQna> qnaList = adminCsQnaService.readAdminCsQnaList("강**");
		
		if(qnaList.isEmpty()) {
			model.addAttribute("qnaList", null);
		}else {
			model.addAttribute("qnaList", qnaList);
		}
		
//		System.out.println(qnaList.get(0));
		
		
		return "admin/cs/qna/list";
	}

	// qna view
	@GetMapping("/view/{num}")
	public String view(@PathVariable int num, Model model) {
		log.info("admin qna view 페이지 접속");
//		AdminCsQna adminCsQna = (AdminCsQna)session.getAttribute("principal");
		
		List<AdminCsQna> qnaView = adminCsQnaService.readAdminCsQna(num);
		model.addAttribute("qnaView", qnaView);
		
		return "admin/cs/qna/view";
	}
	
	@PostMapping("/view")
	public String viewProc(AdminCsQnaDto adminCsQnaDto) {
		log.info("답변 작성 성공");
		System.out.println("1. controller ... " + adminCsQnaDto);
//		AdminCsQna adminCsQna = (AdminCsQna)session.getAttribute("principal");
		
		adminCsQnaService.writeComment(adminCsQnaDto);
		System.out.println("writeComment : " + adminCsQnaDto);
		
		return "redirect:/admin/cs/qna/list";
	}



}
