package com.tencoding.wherego.controller.reservationController;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.tencoding.wherego.dto.reservation.ReservationDto;
import com.tencoding.wherego.service.reservationService.ReservationService;

@RestController
public class ReservationRestController {

	@Autowired
	ReservationService reservationService;
	
	@Autowired
	private HttpSession session;
	
	@PostMapping("/asdf/searchResult")
	public int dateTest(@RequestBody ReservationDto reservationDto) {
		System.out.println("------------controller--------------");
		System.out.println(reservationDto);
		
		List<Integer> list = reservationService.findAllReservationDates(reservationDto);
		if(session.getAttribute("roomList") != null || session.getAttribute("roomCount") != null) {
			System.out.println("session이 있는 경우");
			session.removeAttribute("fromDate");
			session.removeAttribute("toDate");
			session.removeAttribute("roomList");
			session.removeAttribute("roomCount");
		}
		
		if(list.isEmpty() || list.size() < reservationDto.getRoomCount()) {
			System.out.println("방이 없는 경우");
			return 1;
		}else {
			System.out.println("방이 있는 경우");
			session.setAttribute("fromDate", reservationDto.getResFromDate());
			session.setAttribute("toDate", reservationDto.getResToDate());
			session.setAttribute("roomList", list);
			session.setAttribute("roomCount", reservationDto.getRoomCount());
			System.out.println(session.getAttribute("fromDate"));
			System.out.println(session.getAttribute("toDate"));
			System.out.println(session.getAttribute("roomCount"));
			System.out.println(session.getAttribute("roomList"));
			return 0;
		}
	}
	
}
