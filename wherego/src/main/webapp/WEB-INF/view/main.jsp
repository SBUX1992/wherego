<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<title>메인 페이지</title>
<style>
@import
'css/wherego_main_css.css'
</style>
<script src="js/wherego_main_js.js"></script>
</head>
<body>
	<header>
		<%@include file="../view/header.jsp"%>
	</header>
	<div class="main-container">
		<div class="main-content">

			<div class="main_table_area">

				<table class="main_serch_table">
					<tr>
						<td class="td1" onclick="toggleCategory('호텔')">호텔1111</td>
						<td class="td1" onclick="toggleCategory('모텔')">모텔</td>
						<td class="td1" onclick="toggleCategory('펜션')">펜션</td>
						<td class="td1" onclick="toggleCategory('리조트')">리조트</td>
					</tr>
				</table>

				<table class="main_serch_table2">
					<tr>
						<td><input type='date' placeholder="날짜를 선택해주세요." id="checkin"
							name="checkin" onchange="dateChk()"></td>
						<td><input type='date' placeholder="날짜를 선택해주세요."
							id="checkout" name="checkout" onchange="dateChk()"></td>
						<td><select id="select_ro_count"
							class="form-select form-select-lg" onchange="change_ro_count()"
							style="border: none;">
								<option value="1">1</option>
								<option value="2" selected>2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select></td>
						<td><input type="search" class="main_search_text"
							placeholder="지역,숙소명" name="bu_address" required></td>
						<td>
							<button type="submit" style="border-left: 1px solid;"
								class="btn_main_search_button">WHEREGO</button>
						</td>
					</tr>
				</table>



			</div>
		</div>
	</div>
	<h2>⚡️ 원하는 숙소를 클릭해보세요!</h2>
	<div class="select_section">
		<li class="hotel"><span>호텔</span></li>
		<li class="motel"><span>모텔</span></li>
		<li class="pension"><span>펜션</span></li>
		<li class="resort"><span>리조트</span></li>

	</div>

	<h2>💖 평점 높은 숙소 추천!</h2>

	<div class="swiper" style="width: 100%; height: 300px;">
		<!-- Additional required wrapper -->
		<div class="swiper-wrapper">
			<!-- Slides -->
			<div class="swiper-slide">Slide 1</div>
			<div class="swiper-slide">Slide 2</div>
			<div class="swiper-slide">Slide 3</div>
			<div class="swiper-slide">Slide 4</div>
		</div>
		<!-- If we need pagination -->
		<div class="swiper-pagination"></div>

		<!-- If we need navigation buttons -->
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>

		<!-- If we need scrollbar -->
		<div class="swiper-scrollbar"></div>
	</div>

	<script>
const swiper = new Swiper('.swiper', {
  direction: 'horizontal',
  loop: true,
  slidesPerView: 4, // 4개의 슬라이드를 동시에 표시

  autoplay: {
    delay: 3000, // 3초마다 슬라이드를 자동으로 넘김
    disableOnInteraction: true,
  },
  
  loopedSlides: 3, // 마지막 슬라이드에서 처음 슬라이드로 돌아가기 위한 추가 슬라이드 수

  pagination: {
    el: '.swiper-pagination',
  },

  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  scrollbar: {
    el: '.swiper-scrollbar',
  },
});
</script>
</body>
</html>
<footer>
	<%@include file="../view/footer.jsp"%>
</footer>