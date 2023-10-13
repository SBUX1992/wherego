<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>예약하기</title>
    <head>
    <!-- 포트원 결제 -->
        <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
        <!-- jQuery -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
        <!-- iamport.payment.js -->
        <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <!-- 포트원 결제 -->
    <script type="text/javascript" src="../js/payment/payment_js.js" ></script> 

        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Review Write Page</title>
    <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="../css/accommodation/acc_list.css" />

    <!-- bootstrap 4.6v -->
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
        crossorigin="anonymous" />
    <script
        src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>

</head>
<!--------------------------------------- 바디 시작 -------------------------------------------------------->
<body>

    <div class="header">
        <div class="logo_img">
            <img src="../img/accommodation/lottehotel_logo.png" alt="호텔로고">
        </div>
        <div class="header_content">
            <a href="#">로그인</a>
            <div>&nbsp | &nbsp</div>
            <a href="#">회원가입</a>
        </div>
    </div>
    <div class="search_acc container" >
        <div class="search_acc_div container">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
            </svg>
			<h5>롯데호텔 부산</h5>
		</div>

		<div class="search_acc_div container">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="currentColor" class="bi bi-calendar" viewBox="0 0 16 16">
                <path
					d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
            </svg>
			<h5>2023-10-09</h5>
			<h5>~</h5>
			<h5>2023-10-09</h5>
		</div>
		<div class="search_acc_div container">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
                <path
					d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z" />
            </svg>
			<h5>2명</h5>
		</div>
		<br />
		<div>
			<button type="button" class="btn_custom">수정</button>
		</div>
	</div>

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
			<c:forEach var="acc" items="${accList}" varStatus="count">
				<div id="acc_list_contents_${count.count}"
					class="acc_list_contents">
					<div class="acc_list_contain" data-toggle="modal" data-target="#staticBackdrop">
						<div class="acc_image">
							<img src="${acc.imgUrl}" class="img-thumbnail" alt="">
						</div>
						<div class="acc_list_info">
							<input id="roomNoInput" type="hidden" value="${acc.roomNo }"></input>
							<h4 id="roomName${acc.roomNo}">${acc.roomName}</h4>
							<div class="acc_list_info_div">
								<div id="roomView${acc.roomNo}">| ${acc.roomView} </div>
								<div id="roomSize${acc.roomNo}">| 객실면적 ${acc.roomSize } ㎡</div>
								<input id="roomDetail${acc.roomNo}" type="hidden" value="${acc.roomDetail }">
								<input id="amenitiesCommon${acc.roomNo}" type="hidden" value="${acc.amenitiesCommon }">
								<input id="amenitiesBath${acc.roomNo}" type="hidden" value="${acc.amenitiesBath }">
								<input id="amenitiesEtc${acc.roomNo}" type="hidden" value="${acc.amenitiesEtc }">
							</div>
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

	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static"
		data-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div id = "modalOuterWrapper" class="modal-dialog modal-lg modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #F5F5F5;">
					<h5 style="font-weight: 600"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="background-color: #F5F5F5;">
					<div id="imgWrapper"></div>
					
					<div class="acc_detail_div">
						<h3></h3>
						<div></div>
					</div>
					<div class="acc_detail_exp">
						<div class="acc_detail_info">
							<div class="acc_detail_info_title">객실 정보</div>
							<div>
								<div id="modalnRoomView" class="acc_detail_info_content"></div>
								<div id="modalInRoomSize" class="acc_detail_info_content"></div>
							</div>
						</div>
						<div class="br_div"></div>
						<div class="acc_detail_info">
							<div class="acc_detail_info_title">어메니티</div>
							<div>
								<div class="acc_detail_info_content">
									<div class="acc_detail_info_content_title">일반</div>
									<div id="modalInAmenitiesCommon"></div>
								</div>
								<div class="acc_detail_info_content">
									<div class="acc_detail_info_content_title">욕실</div>
									<div id="modalInAmenitiesBath"></div>
								</div>
								<div class="acc_detail_info_content">
									<div class="acc_detail_info_content_title">기타</div>
									<div id="modalInAmenitiesEtc"></div>
								</div>
							</div>
						</div>
						<div class="br_div"></div>
						<div class="acc_detail_info">
							<div class="acc_detail_info_title">추가정보</div>
							<div class="acc_detail_info_content">
								<div class="acc_detail_info_content">전 객실 금연층 운영</div>
								<div class="acc_detail_info_content">조식 가격은 1인 ￦57,000입니다.
									(세금 및 봉사료 포함, 미이용 시에도 환불 불가)</div>
								<div class="acc_detail_info_content">보조 침대(Extra-Bed) 요청 시
									￦50,000이 가산됩니다.</div>
								<div class="acc_detail_info_content">모든 요금에는 세금 10%, 봉사료
									10%(합계 21%)가 부과됩니다.</div>
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-circle" viewBox="0 0 16 16">
                                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                    <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z" />
                                </svg>
								&nbsp객실 내 구성은 객실 층 및 호텔 사정에 따라 사진과 다를 수 있습니다.
							</div>
						</div>
					</div>
                </div>
            </div>
	    </div>
    </div>


	<script type="text/javascript">
		 
		 $(document).ready(function() {
			    $('.acc_list_contents').each(function(index, element) {
			        $(element).on('click', function() {
					    
			        	$('.close').on('click',()=>{
					    	$('#imgWrapper > img').remove();
					    });
					    
			            let roomId = $(element).attr('id').substr(-1);
			            getModalImgList(roomId);
			            $('.modal-header > h5').html($('#roomName' + (index + 1 )).text());
			            $('.acc_detail_div > h3').html($('#roomName' + (index + 1 )).text());
			            $('.acc_detail_div > div').html($('#roomDetail' + (index + 1 )).text());
			            $('#modalnRoomView').html($('#roomView' + (index + 1 )).text());
			            $('#modalInRoomSize').html($('#roomSize' + (index + 1 )).text());
			            $('#modalInAmenitiesCommon').html($('#amenitiesCommon' + (index + 1 )).text());
			            $('#modalInAmenitiesBath').html($('#amenitiesBath' + (index + 1 )).text());
			            $('#modalInAmenitiesEtc').html($('#amenitiesEtc' + (index + 1 )).text());
			        });
			    });
			});

			function getModalImgList(roomNo) {
			    $.get('http://localhost:8080/wherego/acc/detail/' + roomNo, function(data) {
			    	console.log(data);
			        data.forEach((elements, index)=>{
			        	$('#imgWrapper').append($('<img id="imgListView'+ index + 1 +'" src="" class="w-100" alt="">'));
			        	$('#imgListView' + index + 1).attr('src',elements);
			        	
			        })
			    });
			}
				
    </script>
</body>
</html>
