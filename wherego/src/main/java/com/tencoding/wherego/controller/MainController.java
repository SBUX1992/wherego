package com.tencoding.wherego.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tencoding.wherego.dto.accommodation.AccommodationDto;
import com.tencoding.wherego.repository.interfaces.MainRepository;

@Controller
@RequestMapping({"/main", ""})
public class MainController {
	@Autowired
	private MainRepository mainRepository;
	
	@GetMapping("")
	public String main(Model model) {
		List<AccommodationDto> findCheapest3AccList = mainRepository.findCheapest3AccList();
		
		if (findCheapest3AccList == null) {
			System.out.println("데이터베이스 오류!!");
		}
		for(AccommodationDto dto : findCheapest3AccList) {
			String newImgUrl = dto.getImgUrl().substring(3);
//			findCheapest3AccList.
			
		}
		
		model.addAttribute("cheaperAccList", findCheapest3AccList);
		
		return "main";
	}
}
