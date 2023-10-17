<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Review Write Page</title>

    <!-- css -->
    <link rel="stylesheet" href="css/main/main.css" />
    
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
          <img src="img/main/pool_1.jpg" height="400px" style="object-fit: cover" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-interval="2000">
          <img src="img/main/pool_2.jpg" height="400px" style="object-fit: cover" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="img/main/pool_3.jpg" height="400px" style="object-fit: cover" class="d-block w-100" alt="...">
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
          <div>롯데호텔 부산 추천 객실</div>
        </div>
        <div class="main_first_content_a">
          <a href="#">전체 객실 보기</a>
        </div>
        
        <div class="main_first_content_info">
        	<c:forEach var="top3" items="${cheaperAccList }">
	          <div class="main_first_content_info_children">
	            <div class="main_first_content_info_children_img">
	              <img src="${top3.imgUrl }" class="img-thumbnail" alt="">
	            </div>
	            <div class="main_first_content_info_children_div">
	              <div>롯데호텔 부산</div>
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
          <div>롯데호텔 부산 소개</div>
          <div>부산역에서 차로 약 15분 거리에 위치하여 뛰어난 접근성을 자랑하는 롯데호텔 부산은 여행의 목적에 따라 선택할 수 있는 650개의 객실을 갖추고 있습니다. 감각적이고 모던한 스타일의 객실과 다양한 레스토랑, 전용 카지노와 함께 부산에서 즐기는 특별한 즐거움이 될 것입니다.</div>
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
    <div class="main_footer">
      <div class="main_footer_top">
        <div class="main_footer_top_left">
          <div><img src="../img/main/footer-logo.png" alt=""></div>
          <div>
            <div>㈜호텔롯데 04533, 서울특별시 중구 을지로 30 / +82-2-771-1000</div>
            <div>대표이사 김태홍 / 사업자등록번호 104-81-25980 /</div>
            <div>통신판매신고번호 중구02802호</div>
          </div>
        </div>
        <div class="main_footer_top_right">
          <div class="main_footer_top_right_content">
            <div>
              <a href="#">호텔 찾기</a>
              <a href="#">롯데호텔 소개</a>
              <a href="#">브랜드 소개</a>
              <a href="#">수상</a>
              <a href="#">갤러리</a>
              <a href="#">Art Experience</a>
            </div>
          </div>
          <div class="main_footer_top_right_content">
            <div>
              <a href="#">고객의 소리</a>
              <a href="#">지점별 연락처</a>
              <a href="#">신문고(제보)</a>
              <a href="#">컴플라이언스</a>
              <a href="#">채용</a>
            </div>
          </div>
          <div class="main_footer_top_right_content">
            <div>
              <a href="#">시니어 레지던스 VL</a>
              <a href="#">신규 개발</a>
              <a href="#">임직원</a>
              <a href="#">서비스아카데미</a>
              <a href="#">사이트맵</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div class="main_footer_bottom">
      <div>
        <div class="main_footer_bottom_a_border"><a href="#">개인정보처리방침</a></div>
        <div class="main_footer_bottom_a_border"><a href="#">사이트 이용약관</a></div>
        <div class="main_footer_bottom_a_border"><a href="#">약관 및 정책</a></div>
        <div><a href="#">쿠키 설정</a></div>
      </div>
    </div>

  </body>

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
		          content: '<div style="width:150px;text-align:center;padding:6px 0;">롯데호텔 부산</div>'
		      });
		      infowindow.open(map, marker);
		
		      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		      map.setCenter(coords);
		  } 
		});    
  </script>
</html>
