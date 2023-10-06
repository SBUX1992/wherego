package com.tencoding.wherego.repository.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.AccomodationDto;

@Mapper
public interface AccomodationRepository {
	public List<AccomodationDto> findById(int accNo);
}

