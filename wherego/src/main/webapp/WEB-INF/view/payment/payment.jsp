<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- 포트원 결제 -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- 포트원 결제 -->
<script type="text/javascript" src="js/payment/payment_js.js"></script>

<meta charset="UTF-8">
<title>아임포트</title>
<style type="text/css">
 		table { 
 			border-radius: 25px;
 			border: 1px solid #FFCA28;
 			margin-left:auto; 
 			margin-right:auto; 
			border-left:0;border-right:0;border-bottom:0;border-top:0;
			text-align: center;
 			width : 400px; 
 		} 
 		tr, td { 
 			border: 1px solid #FFCA28;
 			border-radius: 25px;
 			padding : 10px; 
 			margin : 5px;  
		  }	
 		</style>
</head>

<body>
	<header>
		<%@include file="../header.jsp"%>
	</header>
		<table>
			<tr>
				<td>${acc.room_name }</td>
			</tr>
		</table>
		<table>
			<tr>
				<td>${acc.room_roomNo }</td>
			</tr>
		</table>
		<table>
			<tr>
				<td>${acc.room_price }</td>
			</tr>
		</table>

		<h2>결제 방법 선택</h2>
		<table>
			<tr>
				<td><label><input type="radio" name="a_payment"
						value="카카오페이">카카오페이 </label> <label><input type="radio"
						name="a_payment" value="무통장입금">무통장입금</label></td>
			</tr>
		</table>

		<div class="acc_list_button">
			<a><button type="button" onclick="pay()" class="price_btn"data-bs-toggle="modal" data-bs-target="#staticBackdrop" 
	                   data-amount="${acc.roomPrice}"
	                   data-name="${acc.roomName}"
	                   data-number="${acc.roomNo}">   


					${acc.roomPrice} KRW결제하기</button> </a>
		</div>
		
	</form>
</body>
</html>
