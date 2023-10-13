package com.tencoding.wherego.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tencoding.wherego.repository.interfaces.admin.AdminCsQnaRepository;
import com.tencoding.wherego.repository.model.admin.AdminCsQna;

@Service
public class AdminCsQnaService {
	
	@Autowired
	private AdminCsQnaRepository adminCsQnaRepository;
	
	public List<AdminCsQna> readAdminCsQnaList(){
		
		List<AdminCsQna> list = adminCsQnaRepository.findAll();
		
		return list;
		
	}

}
