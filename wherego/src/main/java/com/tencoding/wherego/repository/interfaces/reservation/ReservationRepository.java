package com.tencoding.wherego.repository.interfaces.reservation;

import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.reservation.ReservationDto;

@Mapper
public interface ReservationRepository {
	int findRoomCount();
	List<ReservationDto> findAllReservationByRoomNo(int roomNo);
	List<LocalDate> findReservationListByRoomNo(int roomNo);
}