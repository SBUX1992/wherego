package com.tencoding.wherego.dto.reservation;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class ReservationFromDbDto {
	private int roomNo;
	private List<LocalDate> roomCount;
}

// forEach 로 돌려서 select 를 해오는데 index(forEach) 가 있어서 where절에 id 를 줄 수 있어야 한다.
// 빈 리스트에 for무ㄴ