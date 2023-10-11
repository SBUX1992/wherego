package com.tencoding.wherego.repository.interfaces.accommodation;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.accommodation.AccommodationDto;

@Mapper
public interface AccommodationRepository {
	public List<AccommodationDto> findListById();
	public List<String> findImgListById(int roomNo);
}

