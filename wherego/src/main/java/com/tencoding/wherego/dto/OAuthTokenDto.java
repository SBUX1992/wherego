package com.tencoding.wherego.dto;

import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;

import lombok.Data;

@Data
@JsonNaming(value = PropertyNamingStrategies.SnakeCaseStrategy.class) // 코딩 컨벤션, 스네이크 케이스를 카멜 케이스로 자동변환
public class OAuthTokenDto {
	private String accessToken;
	private String tokenType;
	private String refreshToken;
	private String scope;
	private Integer expiresIn;

}
