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
    <link rel="stylesheet" href="../css/accommodation/acc_available_reservation_room_list.css" />

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

	<%@ include file="/WEB-INF/view/header2.jsp"%>
	<%@ include file="/WEB-INF/view/reservation/reservation.jsp"%>
	<div class="acc_list">
		<div class="acc_list_header">
			<div class="container acc_info">
				<h4>HOTEL WHEREGO</h4>
				<h6>5성급 | 부산광역시 부산진구 가야대로 772 | +82-51-810-1000</h6>
				<input id="from_date" type="hidden" value="${fromDate }"></input>
				<input id="to_date" type="hidden" value="${toDate }"></input>
			</div>
		</div>
		<div class="container">
			<div class="acc_price_info">
				<div>*100 points = 1$ 가치 &nbsp &nbsp *평균가/1박 (세금, 봉사료 미포함)</div>
			</div>
			<c:forEach var="acc" items="${accList}" varStatus="count">
				<div id="roomNo${acc.roomNo }" class="acc_list_contents">
					<div class="acc_list_contain" data-toggle="modal" data-target="#staticBackdrop">
						<div class="acc_image">
							<img src="${acc.imgUrl}" class="img-thumbnail" alt="">
						</div>
						<div class="acc_list_info">
							<div id="roomNumber" style="display: none">${acc.roomNo }</div>
							<input id="roomNoInput" type="hidden" value="${acc.roomNo }"></input>
							<h4 id="roomName${acc.roomNo}">${acc.roomName}</h4>
							<div class="acc_list_info_div">
								<div id="roomView${acc.roomNo}">| ${acc.roomView} </div>
								<div id="roomSize${acc.roomNo}">| 객실면적 ${acc.roomSize } ㎡</div>
								<div id="roomDetail${acc.roomNo}" style="display: none"> ${acc.roomDetail } </div>
								<div id="amenitiesCommon${acc.roomNo}" style="display: none"> ${acc.amenitiesCommon } </div>
								<div id="amenitiesBath${acc.roomNo}" style="display: none"> ${acc.amenitiesBath} </div>
								<div id="amenitiesEtc${acc.roomNo}" style="display: none"> ${acc.amenitiesEtc} </div>
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
		<%@ include file="/WEB-INF/view/footer.jsp"%>
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
			            
			            console.log("______________________");
			            console.log(roomId);
			            console.log("______________________");
			            
			            $('.modal-header > h5').html($('#roomName' + roomId).text());
			            $('.acc_detail_div > h3').html($('#roomName' + roomId).text());
			            $('.acc_detail_div > div').html($('#roomDetail' + roomId).text());
			            $('#modalnRoomView').html($('#roomView' + roomId).text());
			            $('#modalInRoomSize').html($('#roomSize' + roomId).text());
			            $('#modalInAmenitiesCommon').html($('#amenitiesCommon' + roomId).html());
			            $('#modalInAmenitiesBath').html($('#amenitiesBath' + roomId).html());
			            $('#modalInAmenitiesEtc').html($('#amenitiesEtc' + roomId).html());
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
