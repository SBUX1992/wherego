package com.tencoding.wherego.service.cs;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
/**
 * 강중현
 */
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tencoding.wherego.dto.cs.CsQnaDto;
import com.tencoding.wherego.repository.interfaces.cs.CsQnaRepository;
import com.tencoding.wherego.repository.model.cs.CsQna;

@Service
public class CsQnaService {
	
	@Autowired
	private CsQnaRepository csQnaRepository;
	
	@Transactional
	public int writeCsQna(CsQnaDto csQnaDto) {
		
		System.out.println("writeCsQnaService start" + csQnaDto);
		
		// 등록 처리
		CsQna csQna = new CsQna();
		csQna.setTitle(csQnaDto.getTitle());
		csQna.setContent(csQnaDto.getContent());
		csQna.setMemId(csQnaDto.getMemId());
		System.out.println("writeCsQnaService end" + csQnaDto);
		
		int resultRowCount = csQnaRepository.insert(csQna);
//		if(resultRowCount != 1) {
//			System.out.println("Service 글 쓰기 실패");
//		}
		return resultRowCount;
	}
	
	// cs qna list 페이지 보기
	@Transactional
	public List<CsQna> readCsQnaList(){
		
		List<CsQna> list = csQnaRepository.findAll();
		return list;
	}
	
	
	// cs qna view
	@Transactional
	public List<CsQna> readCsQna(Integer no) {
		List<CsQna> list = csQnaRepository.findByNo(no);
		return list;
	}
	
	
}
