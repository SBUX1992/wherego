package com.tencoding.wherego.service.cs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tencoding.wherego.repository.interfaces.cs.CsNoticeRepository;
import com.tencoding.wherego.repository.model.cs.CsNotice;

@Service
public class CsNoticeService {
	
	@Autowired
	private CsNoticeRepository csNoticeRepository; 

	@Transactional
	public List<CsNotice> readCsNoticeList(){
		List<CsNotice> list = csNoticeRepository.findAll();
		return list;
	}
	
}
