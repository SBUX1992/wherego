package com.tencoding.wherego.controller.cs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;
/**
 * 강중현
 * 2023-10-10
 * cs qna
 */

@Log4j2
@Controller
@RequestMapping("cs/qna")
public class CsQnaController {

	
    @GetMapping("/list")
    public String list(){
    	log.info("cs qna list 페이지 접속");
        return "cs/qna/list";
    }
    
    
    @GetMapping("/view")
    public String view(){
    	log.info("cs qna view 페이지 접속");
    	return "cs/qna/view";
    }

    
    
    @GetMapping("/write")
    public String write(){
    	log.info("cs qna write 페이지 접속");
    	return "cs/qna/write";
    }
    
}
