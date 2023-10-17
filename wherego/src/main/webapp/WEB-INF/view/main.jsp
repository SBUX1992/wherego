<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>WhereGo</title>

    <!-- css -->
    <link rel="stylesheet" href="../css/main/main.css" />
    
    <!-- bootstrap 4.6v -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
      crossorigin="anonymous"
    ></script>

	<!-- 카카오지도 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1f843b2d8cbe3941e14d9091037ba789&libraries=services"></script>   
	
	<!-- 구글폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" />

  </head>
  <body style="font-family: 'Noto Sans KR', sans-serif">
	 <!-- 헤더 -->
	<%@ include file="/WEB-INF/view/header2.jsp"%>
	<%@ include file="/WEB-INF/view/reservation/reservation.jsp"%>
  	
    <div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active" data-interval="10000">
          <img src="../img/main/pool_1.jpg" height="400px" style="object-fit: cover" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-interval="2000">
          <img src="../img/main/pool_2.jpg" height="400px" style="object-fit: cover" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="../img/main/pool_3.jpg" height="400px" style="object-fit: cover" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-target="#carouselExampleInterval" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-target="#carouselExampleInterval" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </button>
    </div>
    <div class="container">

      <!-- main_first_content_info -->
      <div class="main_first_content">
        <div class="main_first_content_title">
          <div>웨어고호텔 부산 추천 객실</div>
        </div>
        <div class="main_first_content_a">
          <a href="http://localhost:8080/wherego/acc/list">전체 객실 보기</a>
        </div>
        
        <div class="main_first_content_info">
        	<c:forEach var="top3" items="${cheaperAccList }">
	          	<div id="${top3.roomNo }" class="main_first_content_info_children" data-toggle="modal" data-target="#staticBackdrop">
        		<div id="roomName${top3.roomNo }" style="display: none">${top3.roomName }</div>
        	  	<div id="roomView${top3.roomNo }" style="display: none">${top3.roomView }</div>
        	  	<div id="roomSize${top3.roomNo }" style="display: none">${top3.roomSize }</div>
        	  	<div id="roomType${top3.roomNo }" style="display: none">${top3.roomType }</div>
        	  	<div id="roomDetail${top3.roomNo }" style="display: none">${top3.roomDetail }</div>
        	  	<div id="amenitiesCommon${top3.roomNo }" style="display: none">${top3.amenitiesCommon }</div>
        	  	<div id="amenitiesBath${top3.roomNo }" style="display: none">${top3.amenitiesBath }</div>
        	  	<div id="amenitiesEtc${top3.roomNo }" style="display: none">${top3.amenitiesEtc }</div>
        	  	<div id="roomPrice${top3.roomNo }" style="display: none">${top3.roomPrice }</div>
	            <div class="main_first_content_info_children_img">
	              <img src="${top3.imgUrl }" class="img-thumbnail" alt="">
	            </div>
	            <div class="main_first_content_info_children_div">
	              <div>웨어고호텔</div>
	              <div>일반 요금</div>
	            </div>
	            <div class="main_first_content_info_children_info">
	              <div>홈페이지 특별 요금</div>
	              <div class="main_first_content_info_children_info_date">
	                <div>
	                  <div>투숙: &nbsp</div> 
	                  <div>2023년 01월 01일 ~ 2024년 03월 31일</div>
	                </div>
	                <div>
	                  <div>예약: &nbsp</div> 
	                  <div>2023년 01월 01일 ~ 2024년 03월 31일</div>
	                </div>
	              </div>
	            </div>
	            <div class="main_first_content_info_children_price">
	              <div>ROOM</div>
	              <div>
	                <div>최저</div>
	                <div class="room_price">${top3.roomPrice }</div>
	                <div>KRW</div>
	              </div>
	            </div>
	          </div>
        	</c:forEach>
          </div>
        </div>
      </div>
      
      <!-- main_second_content -->
      <div class="main_second_content">
        <div class="main_second_content_info">
          <div>웨어고 호텔 소개</div>
          <div>부산역에서 차로 약 15분 거리에 위치하여 뛰어난 접근성을 자랑하는 웨어고 호텔 은 여행의 목적에 따라 선택할 수 있는 650개의 객실을 갖추고 있습니다. 감각적이고 모던한 스타일의 객실과 다양한 레스토랑, 전용 카지노와 함께 부산에서 즐기는 특별한 즐거움이 될 것입니다.</div>
          <div>부산광역시 부산진구 가야대로 772</div>
        </div>
        <div id="map" style="width:100%;height:100%;"></div>
      </div>

      <!-- main_third_content -->
      <div class="main_third_content">
        <div class="main_third_content_info">
          <div>
            <div>체크인&nbsp</div>
            <div>14:00</div>
          </div>
          <div>
            <div>체크아웃&nbsp</div>
            <div>11:00</div>
          </div>
        </div>
        <div class="main_third_content_info">
          <div>
            <div>객실 : &nbsp</div>
            <div>650</div>
          </div>
          <div>
            <div>다이닝 : &nbsp</div>
            <div>5</div>
          </div>
          <div>
            <div>컨벤션 : &nbsp</div>
            <div>10</div>
          </div>
        </div>
        <div class="main_third_content_info">
          <div>
            <div>대표번호 : &nbsp</div>
            <div>+82-51-810-1000</div>
          </div>
          <div>
            <div>객실 예약 : &nbsp</div>
            <div>+82-51-810-1000</div>
          </div>
          <div>
            <div>팩스 : &nbsp</div>
            <div>+82-51-810-1000</div>
          </div>
        </div>
        <div class="main_third_content_info">
          <div>
            <div>대표 부대시설 : &nbsp<div>미팅룸,  레스토랑,  바 & 라운지,  스파, 온천,  수영장,  피트니스센터,  골프,  비즈니스 센터,  클럽라운지,  액티비티</div></div>
          </div>
        </div>
      </div>

      
    </div>
    <!-- main_footer -->
    <%@ include file="/WEB-INF/view/footer.jsp"%>
    
    
    
    <!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
<<<<<<< HEAD
    	

=======
    
>>>>>>> 6794c7fc7e96d0908129d750d255718572dc0156
	  <script type="text/javascript">
		  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		  mapOption = {
		      center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		      level: 3 // 지도의 확대 레벨
		  };  
	
			//지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
	
			//주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			
			//주소로 좌표를 검색합니다
			geocoder.addressSearch('부산광역시 부산진구 가야대로 772', function(result, status) {
			
			  // 정상적으로 검색이 완료됐으면 
			   if (status === kakao.maps.services.Status.OK) {
			
			      var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
			      // 결과값으로 받은 위치를 마커로 표시합니다
			      var marker = new kakao.maps.Marker({
			          map: map,
			          position: coords
			      });
			
			      // 인포윈도우로 장소에 대한 설명을 표시합니다
			      var infowindow = new kakao.maps.InfoWindow({
			          content: '<div style="width:150px;text-align:center;padding:6px 0;">HOTEL WHEREGO</div>'
			      });
			      infowindow.open(map, marker);
			
			      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			      map.setCenter(coords);
			  } 
			});    
			
			$('document').ready(function() {
				$('.class').on('click', function() {
					$('#imgWrapper > img').remove();
				});
				
				$('.main_first_content_info_children').each(function(index, item) {
					$(item).on('click', function() {
						let roomNo = $(item).attr('id');
						getModalImgList(roomNo);
						
						$('.modal-header > h5').html($('#roomName' + roomNo).text());
						$('.acc_detail_div > h3').html($('#roomName' + roomNo).text());
			            $('.acc_detail_div > div').html($('#roomDetail' + roomNo).text());
			            $('#modalnRoomView').html($('#roomView' + roomNo).text());
			            $('#modalInRoomSize').html($('#roomSize' + roomNo).text());
			            $('#modalInAmenitiesCommon').html($('#amenitiesCommon' + roomNo).html());
			            $('#modalInAmenitiesBath').html($('#amenitiesBath' + roomNo).html());
			            $('#modalInAmenitiesEtc').html($('#amenitiesEtc' + roomNo).html());
					});
				});
			});
			
			function getModalImgList(roomNo) {
				$.get('http://localhost:8080/wherego/acc/detail/'+ roomNo, function(data) {
					console.log(data);
					data.forEach((data, index) => {
						$('#imgWrapper').append($('<img id = "imgListView'+ (index + 1) + '" src ="" class="w-100" alt="">'));
						$('#imgListView' + (index + 1)).attr('src', data)
					});
				});
			}
			
	  </script>
  </body>

</html>