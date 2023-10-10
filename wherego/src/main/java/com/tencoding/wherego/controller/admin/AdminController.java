package com.tencoding.wherego.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
    @GetMapping("/index")
    public String index(){
    	log.info("admin 메인 페이지 접속");
        return "admin/index";
    }
    

    
}
