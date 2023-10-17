package com.tencoding.wherego.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tencoding.wherego.repository.model.admin.AdminCsNotice;
import com.tencoding.wherego.repository.model.admin.AdminCsQna;
import com.tencoding.wherego.service.admin.AdminCsNoticeService;
import com.tencoding.wherego.service.admin.AdminCsQnaService;

import lombok.extern.log4j.Log4j2;
/**
 * 강중현
 * 2023-10-10
 * admin index
 */

@Log4j2
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	// notice
	@Autowired
	private AdminCsNoticeService adminCsNoticeService;
	
	// qna
	@Autowired
	private AdminCsQnaService adminCsQnaService;
	
    @GetMapping("/index")
    public String index(Model model){
    	log.info("admin 메인 페이지 접속");
    	
    	
        
    	// 공지 리스트
    	List<AdminCsNotice> noticeList = adminCsNoticeService.readAdminCsNoticeList();
    	
    	if(noticeList.isEmpty()) {
			model.addAttribute("noticeList", null);
		}else {
			model.addAttribute("noticeList", noticeList);
		}
    	
    	// qna 리스트
    	List<AdminCsQna> qnaList = adminCsQnaService.readAdminCsQnaList();
        
        if(qnaList.isEmpty()) {
			model.addAttribute("qnaList", null);
		}else {
			model.addAttribute("qnaList", qnaList);
		}
    	
    	
        
		// list page 값 받는지 확인
//		System.out.println(noticeList.get(0));
        
        return "admin/index";
    }
    

    
}
