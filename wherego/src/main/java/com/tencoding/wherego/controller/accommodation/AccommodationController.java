package com.tencoding.wherego.controller.accommodation;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tencoding.wherego.dto.accommodation.AccommodationDto;
import com.tencoding.wherego.repository.interfaces.accommodation.AccommodationRepository;
import com.tencoding.wherego.service.accommodation.AccommodationService;

@Controller
@RequestMapping({"/acc"})
public class AccommodationController {

	@Autowired
	private AccommodationService accommodationService;
	
	@Autowired
	private AccommodationRepository accommodationRepository;
	
	@Autowired
	HttpSession session;

	//
//	@GetMapping("/detail/{accNo}")
//	public String getShowAccDetail(@PathVariable int accNo, Model model) {
//		List<AccomodationDto> accomodationDtoList = accomodationService.getShowAccDetail(accNo);
//		
//		// 메인 이미지만 뽑기
//		String mainImg = accomodationDtoList.get(0).getImgUrl();
//		
//		// 이미지 리스만 뽑아 처리 
//		ArrayList<String> imageList = new ArrayList<>();
//		for(int i = 1; i < accomodationDtoList.size(); i++) {
//			imageList.add(accomodationDtoList.get(i).getImgUrl());
//		}
//		
//		model.addAttribute("acc", accomodationDtoList.get(0));
//		model.addAttribute("mainImage", mainImg);
//		model.addAttribute("imageList", imageList); 
//		
//		
//		return "/accomodation/detail";
//	}
//	
	
	@GetMapping("/searchList")
	public String availableReservationRoomList(Model model) {
		List<Integer> list = (List<Integer>) session.getAttribute("roomList");
		List<AccommodationDto> accDtoList = new ArrayList<>();
		list.forEach(e -> {
			 accDtoList.add(accommodationRepository.findAccByRoomNo(e));
		});

		model.addAttribute("roomCount",session.getAttribute("roomCount"));
		model.addAttribute("accList", accDtoList);
		
		return "/accommodation/acc_available_reservation_room_list";
	}
	
	@GetMapping("/list")
	public String getShowAcclist(Model model) {
		List<AccommodationDto> accDtoList = new ArrayList<>(); 
		accDtoList = accommodationService.getAccList();

		model.addAttribute("accList", accDtoList);
		
		return "/accommodation/acc_list";
	}
	
	@GetMapping("/detail/{roomNo}")
	@ResponseBody
	public Object getAccDetail(@PathVariable int roomNo) {
		List<String> imgList = accommodationService.getAccDetail(roomNo);
		
		return imgList;
	}

}
