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
		System.out.println("writeNoticeService");
		System.out.println(adminCsNoticeDto);
		// 등록 처리
		AdminCsNotice adminCsNotice = new AdminCsNotice();
		adminCsNotice.setTitle(adminCsNoticeDto.getTitle());
		adminCsNotice.setContent(adminCsNoticeDto.getContent());
		System.out.println(adminCsNoticeDto);
		System.out.println("writeNoticeService");
		
		// 글을 쓰는 페이지가 있는데 ? 관리자측에서 공지 작성 / 문의글에대한 답변
		// 1. 관리자페이지에 들어가기 위한 조건 -> 로그인을 했는데 관리자라는게 식별이되면 버튼이 나온다거나?
		// 2. 조건을 만족하면 관리자페이지에 들어감. 그리고 관리자용 테이블이 있음.
		// 3. 작성자가 필요없어짐 왜냐? 어차피 그테이블에 게시글은 다 관리자꺼니까
		// 4. 로그인할떄 확인했으면 끝나는거.

		int resultRowCount =  adminCsNoticeRepository.insert(adminCsNotice);
		
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
