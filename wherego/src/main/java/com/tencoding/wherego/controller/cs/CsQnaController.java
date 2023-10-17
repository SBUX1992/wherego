package com.tencoding.wherego.controller.cs;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tencoding.wherego.dto.cs.CsQnaDto;
import com.tencoding.wherego.repository.model.cs.CsQna;
import com.tencoding.wherego.service.cs.CsQnaService;

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

	@Autowired
	private HttpSession session;
	
	@Autowired
	private CsQnaService csQnaService;
	
    @GetMapping("/list")
    public String list(Model model){
    	log.info("cs qna list 페이지 접속");
//    	CsQna csQna = (CsQna)session.getAttribute(Define.PRINCIPAL);
    	
    	List<CsQna> csQnaList = csQnaService.readCsQnaList();
//    	List<CsQna> csQnaList = csQnaService.readCsQnaList("강**");
    	if(csQnaList.isEmpty()) {
			model.addAttribute("csQnaList", null);
		} else {
			model.addAttribute("csQnaList", csQnaList);
		}
    	
    	// 연결 확인
//    	System.out.println(csQnaList.get(0));
    	
        return "cs/qna/list";
    }
    
    
    @GetMapping("/view/{num}")
    public String view(Model model, @PathVariable int num){
    	log.info("cs qna view 페이지 접속");
    	
    	List<CsQna> csQnaView = csQnaService.readCsQna(num);
    	model.addAttribute("csQnaView", csQnaView);
    	
    	return "cs/qna/view";
    }

    
    
    @GetMapping("/write")
    public String write(){
    	log.info("cs qna write 페이지 접속");
//    	CsQna csQna = (CsQna)session.getAttribute(Define.PRINCIPAL);
//    	System.out.println("csQna" + csQna);
    	
    	
    	return "cs/qna/write";
    }
    
    @PostMapping("/write")
    public String writeProc(CsQnaDto csQnaDto) {
    	
    	System.out.println("csQnaDto" + csQnaDto);
    	log.info("등록 Post 클릭");
//    	CsQna csQna = (CsQna)session.getAttribute(Define.PRINCIPAL);
    	
    	csQnaService.writeCsQna(csQnaDto);
    	
    	return "redirect:/cs/qna/list";
    }
    
    
    
}
