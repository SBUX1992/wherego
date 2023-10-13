package com.tencoding.wherego.controller.member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tencoding.wherego.dto.member.TempDto;

@RestController
public class MemberRestController {

	@Autowired
	HttpSession session;
	
	
	@GetMapping("member/getData")
	public List<TempDto> getData() {
		// 로그인 정보없이 url조작으로 마이페이지 진입했을시
		List<TempDto> list = new ArrayList<>();
		for (int i = 0; i < 50; i++) {
			TempDto dto = new TempDto();
			dto.setDate("2023-10-23");
			dto.setPeriod("2023-10-23 ~ 2023-10-23");
			dto.setRoom("room" + i);
			dto.setId(i+1);
			list.add(dto);
		}
		
		return list;
	}
}
