package com.tencoding.wherego.controller.reservationController;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.tencoding.wherego.dto.reservation.ReservationDto;
import com.tencoding.wherego.service.reservationService.ReservationService;

@RestController
public class ReservationRestController {

	@Autowired
	ReservationService reservationService;
	
	@PostMapping("/asdf/searchResult")
	public void dateTest(@RequestBody ReservationDto reservationDto,HttpServletResponse response) {
		System.out.println(reservationDto);
		System.out.println("결과");
		System.out.println(reservationService.findAllReservationDates(reservationDto));
		System.out.println("결과");
		try {
			response.sendRedirect("/wherego/abc?abc=asdfasdf");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//queryString 이나 session 으로 가져가서 저장하자.
		//model.addAttribute("availableRooms","roomNo"); service 에서 받아온 List<Integer>
		
		//return "redirect:/abc?abc=가나다라";
	}
	
	@GetMapping("/abc")
	public void abc(@RequestParam String abc) {
		System.out.println(123);
		System.out.println(abc);
	}
	
}
