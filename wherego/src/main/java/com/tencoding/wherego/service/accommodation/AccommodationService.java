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
<<<<<<< HEAD
		List<AccommodationDto> accommodationDtoList = accommodationRepository.findAccList();		
=======
		
		List<AccommodationDto> accommodationDtoList = accommodationRepository.findListById();
		
>>>>>>> cfe665224ac3872f84659e7155829678f4482295
		return accommodationDtoList;
	}
	
	public List<String> getAccDetail(int roomNo) {
		List<String> getImglist = accommodationRepository.findImgListById(roomNo);
		return getImglist;
	}
}

