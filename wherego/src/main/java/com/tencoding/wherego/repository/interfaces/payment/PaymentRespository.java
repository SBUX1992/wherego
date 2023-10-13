package com.tencoding.wherego.repository.interfaces.payment;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.payment.PaymentDto;

@Mapper
public interface PaymentRespository {
	public List<PaymentDto> paymentById();

String getToken() throws IOException;
	
	int paymentInfo(String imp_uid, String access_token);
	
	public void payMentCancle(String access_token, String imp_uid, String amount, String reason);
}
