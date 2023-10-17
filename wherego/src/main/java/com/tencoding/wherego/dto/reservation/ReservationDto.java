package com.tencoding.wherego.dto.reservation;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

// 키값이 없을 경우 기본 데이터 타입에 초기화로 처리 하라 - 오류 해결 
@JsonIgnoreProperties(ignoreUnknown = true)
@Data
public class ReservationDto {
	private int roomNo;
	private int roomCount;
	private String resFromDate;
	private String resToDate;

	// fromDate 와 toDate 를 받아서 fullDate 를 return한다. fullDate 는 Date타입이다.
	public List<LocalDate> getFullDate() {
		List<LocalDate> dateList = new ArrayList<>();
		LocalDate fromDate = LocalDate.parse(this.resFromDate);
		LocalDate endDate = LocalDate.parse(this.resToDate);

		while (!fromDate.isAfter(endDate.minusDays(1))) {
			dateList.add(fromDate);
			fromDate = fromDate.plusDays(1);
		}
		return dateList;
	}
}
