package com.tencoding.wherego.dto.accommodation;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Data
public class AccommodationDto {
	// room_no; 
	private int roomNo;
	private String roomName;
	private String roomView;
	private String roomSize;
	private String roomType;
	private String roomDetail;
	private String amenitiesCommon;
	private String amenitiesBath;
	private String amenitiesEtc;
	private int roomPrice;
	private int maxPeople;
	private String imgUrl;
	
}
