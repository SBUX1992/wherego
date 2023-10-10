package com.tencoding.wherego.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tencoding.wherego.dto.AccommodationDto;
import com.tencoding.wherego.repository.interfaces.AccommodationRepository;

@Service
public class AccommodationService {
	
	@Autowired
	private AccommodationRepository accomodationRepository;
	
	public List<AccommodationDto> getAccList() {
		List<AccommodationDto> accommodationDtoList = accomodationRepository.findListById();		
		return accommodationDtoList;
	}
}

