package com.tencoding.wherego.handler;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.client.HttpClientErrorException;

import com.tencoding.wherego.handler.exception.CustomRestfulException;

@RestControllerAdvice // IoC, Aop 대상
public class MyRestfulExepcionHandler {

	@ExceptionHandler(Exception.class)
	public void exception(Exception e) {
		System.out.println("==============예외 발생 확인==============");
		System.out.println(e.getMessage());
		System.out.println("==========================================");
	}

	// 사용자 정의 예외 클래스 활용
	@ExceptionHandler(CustomRestfulException.class)
	public String basicException(CustomRestfulException e) {
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("<script>");
		stringBuffer.append("alert(' " + e.getMessage() + " ');"); // 문자열 안에 반드시 ; 기입
		stringBuffer.append("history.back();");
		stringBuffer.append("</script>");

		return stringBuffer.toString();
	}
	
	@ExceptionHandler(HttpClientErrorException.class)
	public String basicException(HttpClientErrorException e) {
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("<script>");
		stringBuffer.append("alert(' " + "세션이 만료되었습니다." + " ');"); // 문자열 안에 반드시 ; 기입
		stringBuffer.append("history.back();");
		stringBuffer.append("</script>");

		return stringBuffer.toString();
	}

}
