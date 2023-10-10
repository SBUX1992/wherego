package com.tencoding.wherego.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.tencoding.wherego.repository.interfaces.MemberRepository;

@Controller
public class AdminController {

	@Autowired
	MemberRepository memberRepository;
	
    @GetMapping("/admin-page")
    public String index(){
        return "admin/index";
    }
    

    
}
