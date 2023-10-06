package com.tencoding.wherego.dto;

import lombok.Data;

@Data
public class AccomodationDto {
	private int accNo;
	private int accHostNo;
	private String accName;
	private String accAddress;
	private String accType;
	private String accInfo;
	private String accOptions;
	private int accPrice;
	private int accDelete;
	private int reviewCount;
	private String imgUrl;
}
