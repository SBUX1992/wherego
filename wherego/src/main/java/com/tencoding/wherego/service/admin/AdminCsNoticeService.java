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
	
	// 공지사항 쓰기
	@Transactional
	public int writeNotice(AdminCsNoticeDto adminCsNoticeDto) {
		System.out.println("writeNoticeService start..." + adminCsNoticeDto);
		// 등록 처리
		AdminCsNotice adminCsNotice = new AdminCsNotice();
		adminCsNotice.setTitle(adminCsNoticeDto.getTitle());
		adminCsNotice.setContent(adminCsNoticeDto.getContent());
//		adminCsNotice.setMemId(principalId);	
		System.out.println("writeNoticeService end..." + adminCsNoticeDto);

		int resultRowCount =  adminCsNoticeRepository.insert(adminCsNotice);
		System.out.println("resultRowCount : " + resultRowCount);
		
		return resultRowCount;
	}
	
	
	// 공지 목록 보기
	@Transactional
	public List<AdminCsNotice> readAdminCsNoticeList() {
		
		List<AdminCsNotice> list = adminCsNoticeRepository.findAll();
		// list page 값 받는지 확인
//		System.out.println("list aaa size() :  " + list.size());
		return list;
	}
	
	// notice view 글 보기
	@Transactional
	public List<AdminCsNotice> readAdminCsNotice(Integer no) {
		
		List<AdminCsNotice> list = adminCsNoticeRepository.findByNo(no);
		// 값 받는지 확인
		System.out.println("list size() :  " + list.size());
		return list;
	}
	
}
