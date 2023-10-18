package com.tencoding.wherego.dto.member;

import java.text.DecimalFormat;

import lombok.Data;

@Data
public class MyPapePaymentDto {
	private String paidAmount;
	private String payCreatedAt;
	private Character payCompleted;
	private String roomName;
	private String resFromDate;
	private String resToDate;

	public String trans(int price) {
		DecimalFormat formatter = new DecimalFormat("#,###");
		String formattedNumber = formatter.format(price);
		return formattedNumber;
	}
}
