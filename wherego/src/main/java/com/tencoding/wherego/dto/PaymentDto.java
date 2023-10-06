package com.tencoding.wherego.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PaymentDto {
	 public int  id;
	 public int pay_price;
	 public String user_id;
	 public String  pay_payment;
	 public int  pay_completed;
	   public Timestamp created_at;
	
}
