package com.tencoding.wherego.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tencoding.wherego.dto.admin.AdminCsNoticeDto;
import com.tencoding.wherego.repository.interfaces.admin.AdminCsNoticeRepository;
import com.tencoding.wherego.repository.model.admin.AdminCsNotice;

@Service
public class AdminCsNoticeService {

	
	@Autowired
	private AdminCsNoticeRepository adminCsNoticeRepository;
	
	@Transactional
	public int writeNotice(AdminCsNoticeDto adminCsNoticeDto, Integer principalNo) {
		// 등록 처리
		AdminCsNotice adminCsNotice = new AdminCsNotice();
		adminCsNotice.setTitle(adminCsNoticeDto.getTitle());
		adminCsNotice.setContent(adminCsNoticeDto.getContent());
		adminCsNotice.setNo(principalNo);

		int resultRowCount =  adminCsNoticeRepository.insert(adminCsNotice);
		

		return resultRowCount;
	}
	
	
	// 공지 목록 보기
	@Transactional
	public List<AdminCsNotice> readAdminCsNoticeList(String memId) {
		
		List<AdminCsNotice> list = adminCsNoticeRepository.findByMemId(memId);
		// list page 값 받는지 확인
//		System.out.println("list aaa size() :  " + list.size());
		return list;
	}
	
	
	
}
