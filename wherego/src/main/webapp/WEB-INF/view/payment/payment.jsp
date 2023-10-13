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
<script type="text/javascript" src="/js/payment/payment_js.js" ></script> 

<meta charset="UTF-8">
<title>아임포트</title>
</head>

<body>
	<header>
		<%@include file="../header.jsp"%>
	</header>

		    <div class="acc_list">
        <div class="acc_list_header">
            <div class="container acc_info">
                <h4>롯데호텔 부산</h4>
                <h6>5성급 | 부산광역시 부산진구 가야대로 772 | +82-51-810-1000</h6>
            </div>
        </div>
        <div class="container">
            <div class="acc_price_info">
                <div>*100 points = 1$ 가치 &nbsp &nbsp *평균가/1박 (세금, 봉사료 미포함)</div>
            </div>
            
            <c:forEach var="acc" items="${accList}">
	            <div class="acc_list_contents">
	                <div class="acc_list_contain" data-toggle="modal" data-target="#staticBackdrop" onclick="getImgList()">
	                    <div class="acc_image">
	                        <img src="${acc.imgUrl }" class="img-thumbnail" alt="...">
	                    </div>
	                    <div class="acc_list_info">
	                    	<input type="hidden" value="${acc.roomNo }"></input>
	                        <h4>${acc.roomName}</h4>
	                        <h5>| ${acc.roomView} | 객실면적 ${acc.roomSize } ㎡</h5>
	                        <h5>${acc.roomType }</h5>
	                    </div>
	                </div>
	                <div class="acc_list_button">
	                   <a><button type="button"   onclick="kakaopay()"class="price_btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop" 
	                   data-amount="${acc.roomPrice}"
	                   data-name="${acc.roomName}"
	                   data-number="${acc.roomNo}">         
    ${acc.roomPrice} KRW</button>
	                </a>
	                </div>
	            </div>
            </c:forEach>
            
        </div>
    </div>
		
</body>
</html>
