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
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

   <!-- 포트원 결제 -->
<script type="text/javascript" src="js/payment/payment_js.js"></script>

<meta charset="UTF-8">
<title>아임포트</title>
</head>

<body>
	<header>
		<%@include file="../header.jsp"%>
	</header>

			<div class="card-body bg-white mt-0 shadow">
		  <button onclick="requestPay()" class="btn btn-lg btn-block  btn-custom" >결제하기</button>
		</div>
		
		
</body>
</html>
