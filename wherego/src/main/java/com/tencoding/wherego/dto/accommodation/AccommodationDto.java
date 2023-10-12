package com.tencoding.wherego.dto.accommodation;

import lombok.Data;

@Data
public class AccommodationDto {
	private int roomNo;
	private String roomName;
	private String roomView;
	private String roomSize;
	private String roomType;
	private String roomDetail;
	private String accInfo;
	private String amenitiesCommon;
	private String amenitiesBath;
	private String amenitiesEtc;
	private int roomPrice;
	private int maxPeople;
	private String imgUrl;
}
