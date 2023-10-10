package com.tencoding.wherego.controller.cs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

	
    @GetMapping("/list")
    public String list(){
    	log.info("cs notice list 페이지 접속");
        return "cs/notice/list";
    }
    
    
    @GetMapping("/view")
    public String view(){
    	log.info("cs notice view 페이지 접속");
    	return "cs/notice/view";
    }

    
}
