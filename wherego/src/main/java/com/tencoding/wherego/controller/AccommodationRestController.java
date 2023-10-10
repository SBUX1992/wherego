package com.tencoding.wherego.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tencoding.wherego.dto.Tag;
import com.tencoding.wherego.repository.interfaces.TagRepository;

@RestController
@RequestMapping("accomodation")
public class AccommodationRestController {

	@Autowired
	TagRepository tagRepository;

	@GetMapping("/findAllOptions")
	public List<Tag> findMainTags() {
		List<Tag> list = tagRepository.findSubTags(32);
		System.out.println(list);
		return list;
	}

	@PostMapping("/putCompanyOptions")
	public int putCompanyOptions(@RequestBody String options) {
		System.out.println(options);
		// return companyRepository.saveTags(list);
		return 1;
	}

	@PostMapping("/deleteCompanyOption")
	public int a(@RequestBody String a) {
		String[] b = a.split("/");
		for (String element : b) {
			System.out.println(element);
		}
		return 1;
	}

}
