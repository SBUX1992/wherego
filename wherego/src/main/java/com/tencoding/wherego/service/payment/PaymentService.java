
package com.tencoding.wherego.service.payment;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import
java.io.IOException;
import java.io.InputStreamReader;
import
java.io.OutputStreamWriter;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import
org.springframework.beans.factory.annotation.Value;
import
org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.tencoding.wherego.dto.payment.PaymentDto;
import com.tencoding.wherego.repository.interfaces.member.MemberRepository;
import com.tencoding.wherego.repository.interfaces.payment.PaymentRespository;



import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PaymentService {
	@Autowired
	private PaymentRespository paymentRespository;
	@Autowired
	private SqlSession session;

	public void application_process(HashMap<String, String> param) {
		log.info("@# Service: application_process");
		MemberRepository mr = session.getMapper(MemberRepository.class);
		mr.application_process(param);
	}

	public List<PaymentDto> getPayList() {

		List<PaymentDto> paymentDtoList = paymentRespository.paymentById();

		return paymentDtoList;
	}

	@Value("${imp_key}")
	private String impKey;

	@Value("${imp_secret}")
	private String impSecret;

	public String getToken() throws IOException {

		HttpsURLConnection conn = null;

		URL url = new URL("https://api.iamport.kr/users/getToken");

		conn = (HttpsURLConnection) url.openConnection();

		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setDoOutput(true);
		JsonObject json = new JsonObject();

		json.addProperty("imp_key", impKey);
		json.addProperty("imp_secret", impSecret);

		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));

		bw.write(json.toString());
		bw.flush();
		bw.close();

		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

		Gson gson = new Gson();

		String response = gson.fromJson(br.readLine(), Map.class).get("response").toString();

		System.out.println(response);

		String token = gson.fromJson(response, Map.class).get("access_token").toString();

		br.close();
		conn.disconnect();

		return token;
	}

	public int paymentInfo(String imp_uid, String access_token) {

		return 0;
	}

	public void payMentCancle(String access_token, String imp_uid, String amount, String reason) {

	}

}