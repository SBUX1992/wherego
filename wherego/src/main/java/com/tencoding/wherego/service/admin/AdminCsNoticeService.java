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
	public void writeNotice(AdminCsNoticeDto adminCsNoticeDto, String principalId) {
		// 등록 처리
		AdminCsNotice adminCsNotice = new AdminCsNotice();
		adminCsNotice.setTitle(adminCsNoticeDto.getTitle());
		adminCsNotice.setContent(adminCsNoticeDto.getContent());
		adminCsNotice.setMemId(principalId);


//	    // 현재 날짜를 "yyyy-MM-dd" 형식으로 변환
//	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//	    String formattedDate = dateFormat.format(new Date());
//	    
//	    adminCsNotice.setRdate(formattedDate);
	}
	
	
	// 공지 목록 보기
	@Transactional
	public List<AdminCsNotice> readAdminCsNoticeList(String memId) {
		
		List<AdminCsNotice> list = adminCsNoticeRepository.findByMemId(memId);
		System.out.println("list aaa size() :  " + list.size());
		return list;
	}
	
	
	
}
