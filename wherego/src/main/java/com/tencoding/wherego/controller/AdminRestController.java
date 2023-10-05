package com.tencoding.wherego.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tencoding.wherego.dto.EditTagDto;
import com.tencoding.wherego.dto.MemberListDto;
import com.tencoding.wherego.dto.Tag;
import com.tencoding.wherego.repository.interfaces.MemberRepository;
import com.tencoding.wherego.repository.interfaces.TagRepository;

@RestController
@RequestMapping("/admin")
public class AdminRestController {

	@Autowired
	private TagRepository tagRepository;
	
	@Autowired
	private MemberRepository memberRepository;

	@GetMapping("/popUpPage")
	public String popUpPage() {
		return "추가할 Tag 입력";
	}

	// 태그 저장
	//@RequestMapping( method = {RequestMethod.POST},value="/saveTags", produces="application/json")
	@PostMapping("/saveTags")
	public int saveTags(@RequestBody Tag tag) {
		return tagRepository.saveTags(tag);
	}
	
	@PostMapping("/editTagName")
	public int editTagName(@RequestBody EditTagDto editTagDto) {
		System.out.println(editTagDto.toString());
		return tagRepository.editTag(editTagDto);
	}

	@GetMapping("/deleteTag/{tagId}")
	public int deleteTag(@PathVariable int tagId) {
		return tagRepository.deleteByTagId(tagId);
	}
	
	@GetMapping("/findMainTags")
	public List<Tag> findMainTags() {
		List<Tag> list = tagRepository.findMainTags();
		System.out.println("---------------------");
		Date currentDate = new Date();
		System.out.println(currentDate);
		System.out.println();
		System.out.println(list);
		System.out.println("---------------------");
		return list;
	}

	// subTags 를 불러옴
	@GetMapping("/findSubTags/{parentTagId}")
	public List<Tag> findSubTags(@PathVariable int parentTagId) {
		System.out.println("48번째줄 controller");
		System.out.println(parentTagId);
		List<Tag> list = tagRepository.findSubTags(parentTagId);
		return list;
	}
	
	// admin 이 memberList 를 불러온다.
    @GetMapping("/getMemberList")
    public List<MemberListDto> getMemberList() {
    	//return memberRepository.getMemberList();
    	List<MemberListDto> mld = new ArrayList<>();
    	Timestamp timestamp = Timestamp.valueOf("2023-10-04 15:30:00");
    	for (int i = 0; i < 10; i++) {
			MemberListDto dto = MemberListDto.builder().
					memUserNo(i).
					memId("" + i).
					memNickname("" + i).
					memName("name" + i).
					memEmail("" + i).
					memPerLevel(i).
					memProvider(i).
					memPoint(i).
					memPhone("" + i).
					memAddr1("" + i).
					memAddr2("" + i).
					memRdate(timestamp).
					build();
    		mld.add(dto);
		}
    	return mld;
    }
	
	//@GetMapping("/findAllMembers") memberRepository.findAll();
	
	

}
