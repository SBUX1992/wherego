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
	public void writeCsQna(CsQnaDto csQnaDto, String principalId) {
		CsQna csQna = new CsQna();
		csQna.setTitle(csQnaDto.getTitle());
		csQna.setContent(csQnaDto.getContent());
		csQna.setMemId(principalId);
		
		int resultRowCount = csQnaRepository.insert(csQna);
		if(resultRowCount != 1) {
			System.out.println("Service 글 쓰기 실패");
		}
	}
	
	
	@Transactional
	public List<CsQna> readCsQnaList(){
		
		List<CsQna> list = csQnaRepository.findAll();
		return list;
	}
	
}
