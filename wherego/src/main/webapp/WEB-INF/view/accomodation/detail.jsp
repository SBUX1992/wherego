<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>${acc.accName }</title>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1f843b2d8cbe3941e14d9091037ba789&libraries=services"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- css -->
<<<<<<< HEAD
    <link rel="stylesheet" href="/css/acc_detail.css" />
=======
    <link rel="stylesheet" href="/css/accomodation/acc_detail.css" />
>>>>>>> 149bcca9edfe83eb6806981477130e3c6316649d
    
    <!-- js -->

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

    <!-- 슬라이드 -->
    <script 
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" 
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />

    <!-- 달력 -->
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
    <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>

    <script type='text/javascript'>
      $(function(){
          $('div.input-daterange').datepicker({
              calendarWeeks: false,
              todayHighlight: true,
              autoclose: true,
              format: "yyyy/mm/dd",
              language: "kr"
          });
      });
      ;(function($){
        $.fn.datepicker.dates['kr'] = {
          days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
          daysShort: ["일", "월", "화", "수", "목", "금", "토", "일"],
          daysMin: ["일", "월", "화", "수", "목", "금", "토", "일"],
          months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
          monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
        };
      }(jQuery));

      $("div.input-daterange").each(function(){
          var $inputs = $(this).find('input');
          $inputs.datepicker();
          if ($inputs.length >= 2) {
              var $from = $inputs.eq(0);
              var $to   = $inputs.eq(1);
              $from.on('changeDate', function (e) {
                  var d = new Date(e.date.valueOf());
                  $to.datepicker('setStartDate', d); // 종료일은 시작일보다 빠를 수 없다.
              });
              $to.on('changeDate', function (e) {
                  var d = new Date(e.date.valueOf());
                  $from.datepicker('setEndDate', d); // 시작일은 종료일보다 늦을 수 없다.
              });
          }
      });

      function count(type)  {
        // 결과를 표시할 element
        const resultElement = document.getElementById('result');
        
        // 현재 화면에 표시된 값
        let number = resultElement.innerText;
        
        // 더하기/빼기
        if(type === 'plus') {
          number = parseInt(number) + 1;
        }else if(type === 'minus')  {
          number = parseInt(number) - 1;
	      if (number < 1) {
	       	number = 1;
	      }
        }
        
	    // 결과 출력
	    resultElement.innerText = number;
      }

    </script>

  </head>
  <body>
    <div class="container">
      <div class="main" >
        <div class="acc_product">
          <p class="acc_category">${acc.accName } | ${acc.accType }</p>
          <div class="acc_number">
            <p>상품번호</p>
            <p>#${acc.accNo }</p>
          </div>
        </div>
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
<<<<<<< HEAD
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="img/lotte_signiel.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item active">
              <img src="img/lotte_signiel.2.jpg" class="d-block w-100" alt="두번째 이미지">
            </div>
            <div class="carousel-item">
              <img src="img/lotte_signiel.3.jpg" class="d-block w-100" alt="세번째 이미지">
            </div>
=======
          <div id="imgCard" class="carousel-inner">
          	<div class="carousel-item active">
	            <img src="${mainImage}" class="d-block w-100" alt="...">
	        </div>
          	<c:forEach var="imgUrlList" items="${imageList }">
	            <div class="carousel-item">
	              <img src="${imgUrlList}" class="d-block w-100" alt="...">
	            </div>
          	</c:forEach>
>>>>>>> 149bcca9edfe83eb6806981477130e3c6316649d
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
        <div class="acc_main">
          <div class="acc_info">
            <div class="acc_location">
	          <div class="acc_name">${acc.accName } | ${acc.accType }</div>
            </div>
            <div class="acc_res">
              <div class="acc_price">KRW ${acc.accPrice }원</div>
              <button type="button" class="btn btn-info">예약하기</button>
            </div>
          </div>
        </div>
        <div class="acc_detail">
          <div class="acc_div">
            <div class="acc_guide">
              <p>예약 일자 선택</p>
            </div>
            <div class="acc_select">
              <div class="input-group input-daterange">
                <input type="text" class="form-control" value="Check in">
                <div class="input-group-addon">to</div>
                <input type="text" class="form-control" value="Check out">
                <div class="input-group-addon">인원 수</div>
              </div>
              <div class="acc_select_button">
                <button type="button" class="btn btn-info" onclick="count('minus')">-</button>
                <div id="result" class="acc_number_people">1</div>
                <button type="button" class="btn btn-info" onclick="count('plus')">+</button>
              </div>
            </div>
          </div>
          <div class="acc_div">
            <div class="acc_guide">서비스 정보</div>
            <div>${acc.accOptions }</div>
          </div>
          <div class="acc_div">
            <div class="acc_guide">호텔 정보</div>
            <div>${acc.accInfo }</div>
          </div>
          <div class="acc_div">
            <div class="acc_guide">위치 정보</div>
            <div id="map" style="width:100%;height:400px;"></div>
    		<input type="hidden" id="address" value="${acc.accAddress }">
    		<input type="hidden" id="hotelName" value="${acc.accName }">
          </div>
          <div class="acc_div">
            <div class="acc_guide">리뷰</div>
          	<div class="acc_review_header">
          		<div class="acc_review_rate">4.6</div>
          		<div class="acc_review_star">
		          	<div class="star-rating space-x-4 mx-auto">
		                <input type="radio" id="5-stars" name="rating" value="5" />
		                <label for="5-stars" class="star pr-4">★</label>
		                <input type="radio" id="4-stars" name="rating" value="4" />
		                <label for="4-stars" class="star">★</label>
		                <input type="radio" id="3-stars" name="rating" value="3" />
		                <label for="3-stars" class="star">★</label>
		                <input type="radio" id="2-stars" name="rating" value="2" />
		                <label for="2-stars" class="star">★</label>
		                <input type="radio" id="1-star" name="rating" value="1" />
		                <label for="1-star" class="star">★</label>
		             </div>
		             <div class="acc_review_count">${acc.reviewCount }개의 리뷰</div>
          		</div>
          	</div>
          </div>
          <div class="acc_review_list">
          	<img src="/images/lotte_signiel.3.jpg" class="acc_review_user_profile" alt="프로필 사진">
          	<div class="acc_review_list_content">
          		<div class="user_name">사용자 닉네임</div>
          		<div class="user_review_rate">
          			<div class="star-rating space-x-4 mx-auto">
		                <input type="radio" id="5-stars" name="rating" value="5" />
		                <label for="5-stars" class="star pr-4">★</label>
		                <input type="radio" id="4-stars" name="rating" value="4" />
		                <label for="4-stars" class="star">★</label>
		                <input type="radio" id="3-stars" name="rating" value="3" />
		                <label for="3-stars" class="star">★</label>
		                <input type="radio" id="2-stars" name="rating" value="2" />
		                <label for="2-stars" class="star">★</label>
		                <input type="radio" id="1-star" name="rating" value="1" />
		                <label for="1-star" class="star">★</label>
		             </div>
		             <div class="wirte_review_date">2023/10/04</div>
          		</div>
          		<div class="acc_div">
		          	<div class="acc_review_content">
		          		<p>최고의 호텔입니다!asdfasdfasdfasdfasdfasdfasdfasdfasdfasasdfffffffffffffffffffffffffffffffffdfasdfasdfasdfasfd!</p>
		          	</div>
          		</div>
          	</div>
          </div>
        </div>
      </div>
    </div>
    <script>
	    var address = document.getElementById('address').value;
	    var hotelName = document.getElementById('hotelName').value;
	    console.log(address);
	    console.log(hotelName);
	
	    var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	        mapOption = { 
	            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	            level: 3 // 지도의 확대 레벨
	        };
	
	    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	    
	    var geocoder = new kakao.maps.services.Geocoder();

	 // 주소로 좌표를 검색합니다
	 geocoder.addressSearch(address, function(result, status) {

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
	             content: '<div style="width:150px;text-align:center;padding:6px 0;">'+ hotelName +'</div>'
	         });
	         infowindow.open(map, marker);

	         // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	         map.setCenter(coords);
	     } 
	 });    

    </script>
      
  </body>
</html>
