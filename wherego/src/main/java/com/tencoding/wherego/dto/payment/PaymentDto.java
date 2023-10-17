package com.tencoding.wherego.dto.payment;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PaymentDto {
	 public int  pay_id;
	 public String mem_id;
	 public String pay_completed;
	 
	 public String imp_uid;
	 public String  merchat_uid;
	 public int  paid_amount;
	 public String apply_num;
	 
	   public Timestamp pay_created_at;
}
