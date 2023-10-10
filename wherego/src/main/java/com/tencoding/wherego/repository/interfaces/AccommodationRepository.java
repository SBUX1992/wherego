package com.tencoding.wherego.repository.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.AccommodationDto;

@Mapper
public interface AccommodationRepository {
	public List<AccommodationDto> findListById();
}

