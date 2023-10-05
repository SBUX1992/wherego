package com.tencoding.wherego.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MemberListDto {
	private Integer memUserNo;
	private String memId;
	private String memNickname;
	private String memName;
	private String memEmail;
	private String memPhone;
	private String memAddr1;
	private String memAddr2;
	private Timestamp memRdate;
}



