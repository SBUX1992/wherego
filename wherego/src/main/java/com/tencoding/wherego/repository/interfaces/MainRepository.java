package com.tencoding.wherego.repository.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.accommodation.AccommodationDto;

@Mapper
public interface MainRepository {
	public List<AccommodationDto> findCheapest3AccList();
}
