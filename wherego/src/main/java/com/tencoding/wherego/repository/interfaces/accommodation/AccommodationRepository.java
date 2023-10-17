package com.tencoding.wherego.repository.interfaces.accommodation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.accommodation.AccommodationDto;

@Mapper
public interface AccommodationRepository {
	public List<AccommodationDto> findAllAccList();
	public List<String> findImgListById(int roomNo);
	public AccommodationDto findAccByRoomNo(int roomNo);
}

