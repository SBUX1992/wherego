package com.tencoding.wherego.repository.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class Member {
	private Integer memUserNo;
	private String memId;
	private String memPassword;
	private String memNickname;
	private String memName;
	private String memEmail;
	private Integer memPerLevel = 1;
	private Integer memProvider = 1;
	private Integer memPoint = 0;
	private String memPhone;
	private String memAddr1;
	private String memAddr2;
	private Timestamp memRdate;
}
