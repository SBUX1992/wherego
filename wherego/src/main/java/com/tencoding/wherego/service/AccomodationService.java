package com.tencoding.wherego.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tencoding.wherego.dto.AccomodationDto;
import com.tencoding.wherego.repository.interfaces.AccomodationRepository;

@Service
public class AccomodationService {
	
	@Autowired
	private AccomodationRepository accomodationRepository;
	
	public List<AccomodationDto> getShowAccDetail(int accNo) {
		List<AccomodationDto> accomodationDtoList = accomodationRepository.findById(accNo);		
		return accomodationDtoList;
	}
}

