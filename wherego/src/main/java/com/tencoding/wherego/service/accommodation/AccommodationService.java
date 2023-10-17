package com.tencoding.wherego.service.accommodation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tencoding.wherego.dto.accommodation.AccommodationDto;
import com.tencoding.wherego.repository.interfaces.accommodation.AccommodationRepository;

@Service
public class AccommodationService {
	
	@Autowired
	private AccommodationRepository accommodationRepository;
	
	public List<AccommodationDto> getAccList() {
		List<AccommodationDto> accommodationDtoList = accommodationRepository.findAllAccList();		
		return accommodationDtoList;
	}
	
	public List<String> getAccDetail(int roomNo) {
		List<String> getImglist = accommodationRepository.findImgListById(roomNo);
		return getImglist;
	}

	
}

