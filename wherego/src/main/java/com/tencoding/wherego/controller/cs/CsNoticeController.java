package com.tencoding.wherego.controller.cs;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tencoding.wherego.repository.model.cs.CsNotice;
import com.tencoding.wherego.service.cs.CsNoticeService;
import com.tencoding.wherego.utils.Define;

import lombok.extern.log4j.Log4j2;
/**
 * 강중현
 * 2023-10-10
 * cs 공지
 */

@Log4j2
@Controller
@RequestMapping("cs/notice")
public class CsNoticeController {

	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private CsNoticeService csNoticeService;
	
    @GetMapping("/list")
    public String list(Model model){
    	log.info("cs notice list 페이지 접속");
    	CsNotice csNotice = (CsNotice)session.getAttribute(Define.PRINCIPAL);
    	
    	List<CsNotice> csNoticeList = csNoticeService.readCsNoticeList();
    	if(csNoticeList.isEmpty()) {
			model.addAttribute("csNoticeList", null);
		} else {
			model.addAttribute("csNoticeList", csNoticeList);
		}

    	// 연결 확인
//    	System.out.println(csNoticeList.get(0));
    	
        return "cs/notice/list";
    }
    
    
    @GetMapping("/view")
    public String view(){
    	log.info("cs notice view 페이지 접속");
    	return "cs/notice/view";
    }

    
}
