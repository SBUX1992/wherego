package com.tencoding.wherego.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tencoding.wherego.dto.admin.AdminCsQnaDto;
import com.tencoding.wherego.repository.interfaces.admin.AdminCsQnaRepository;
import com.tencoding.wherego.repository.model.admin.AdminCsQna;

@Service
public class AdminCsQnaService {
	
	@Autowired
	private AdminCsQnaRepository adminCsQnaRepository;
	
	// qna 답변 쓰기
	@Transactional
	public int writeComment(AdminCsQnaDto adminCsQnaDto) {
		System.out.println("2. writeQnaService start... " + adminCsQnaDto);
		
		// comment 답변 등록
		AdminCsQna adminCsQna = new AdminCsQna();
		adminCsQna.setComment(adminCsQnaDto.getComment());
		
		System.out.println("3. writeQnaService end... " + adminCsQnaDto);
		
		int resultRowCount = adminCsQnaRepository.updateByNo(adminCsQna);
		return resultRowCount;
		
	}
	
	
	// qna list 목록 보기
	@Transactional
	public List<AdminCsQna> readAdminCsQnaList(){
		
		List<AdminCsQna> list = adminCsQnaRepository.findAll();
		
		return list;
		
	}
	
	
	// qna View 보기
	@Transactional
	public List<AdminCsQna> readAdminCsQna(Integer no) {
		List<AdminCsQna> list = adminCsQnaRepository.findByNo(no);
		return list;
	}

}
