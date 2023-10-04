package com.tencoding.wherego.dto;

import lombok.Data;

@Data
public class SignUpFormDto {
	private String id;
	private String password;
	private String nickname;
	private String name;
	private String email;
	private String phone;
	private String addr1;
	private String addr2;
}
