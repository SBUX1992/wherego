package com.tencoding.wherego.controller.reservationController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.tencoding.wherego.service.reservationService.ReservationService;

@Controller
public class TestController {
	
	@Autowired
	ReservationService reservationService;
	
	@GetMapping("/test")
	public String test() {
		return "reservation/test";
	}
	
	@GetMapping("/asdf/test2")
	public String test2(@RequestBody Model model) {
		System.out.println("0000000000000000000");
		System.out.println(model);
		//if
		System.out.println(model.getAttribute("searchResult"));
		return "a";
	}
	
	
	@GetMapping("/testCode")
	public void testCode() {
		
	}
	


}

// memo
//
// Room 1대 다 available 
//
// db 
//
// Room -> 어쩌곶 ㅓ쩌고
//
// Reservation -> 1. RoomNum , 예약시작일, 예약끝일
//
// 예약가능일은 어차피 datePicker 에서 막을 수 있는 요소.
//
// query 는 어케 짜면 될까 ? --->  
// 1.  datePicker 에 보여줘야된다
// select * from reservation_log where 방 Num = ?
// 가공. ( fromDate-toDate 의 배열 ) -> datePicker 에 가져감. -> datePicker 에서 해당 요소들을 disable로.
//
//
//
//
// room 의 column 으로 예약 가능 여부가 표시되고 
// reservation 에서는 예약할 때 dateFormet 으로 바꿔서 가면 .. 
// 그니까 예약할 때 room 의 column 인 예약여부가 바뀐다, 해당 일자는 예약정보에 저장된다.