<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.main_footer {
	background-color: #000;
	margin-top: 50px;
	padding: 30px;
	display: flex;
	flex-direction: column;
}

.main_footer_top {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
}

.main_footer_top_left {
	display: flex;
	flex-direction: column;
}

.main_footer_top_left>div {
	
}

.main_footer_top_left>div>img {
	color: #fff;
	width: 100px;
	height: 88px;
	margin-bottom: 20px;
}

.main_footer_top_left :last-child {
	color: #A7A7A7;
}

.main_footer_top_right {
	color: #A7A7A7;
	display: flex;
	flex-direction: row;
}

.main_footer_top_right_content {
	display: flex;
	flex-direction: column;
}

.main_footer_top_right_content>div {
	border-left: 1px solid #A7A7A7;
	display: flex;
	flex-direction: column;
	margin-right: 20px;
	padding-left: 20px;
}

.main_footer_top_right_content>div>a {
	color: #A7A7A7;
}

.main_footer_bottom {
	background-color: #000;
	border-top: 1px solid #A7A7A7;
}

.main_footer_bottom>div {
	display: flex;
	flex-direction: row;
	padding: 20px 30px;
}

.main_footer_bottom_a_border {
	border-right: 1px solid #A7A7A7;
	margin-right: 10px;
	padding-right: 10px;
}

.main_footer_bottom_a_border>a {
	color: #A7A7A7;
}

.main_footer_bottom>div>div>a {
	color: #A7A7A7;
}
</style>
<footer>
	<div class="main_footer">
		<div class="main_footer_top">
			<div class="main_footer_top_left">
				<div>
					<img src="/wherego/img/main/wherego_logo.png" alt="">
				</div>
				<div>
					<div>㈜웨어고 04533, 부산광역시 부산진구 중앙대로 688 / +82-51-912-1000</div>
					<div>대표이사 홍길동 / 사업자등록번호 999-99-9999 /</div>
					<div>통신판매신고번호 중구99999호</div>
				</div>
			</div>
			<div class="main_footer_top_right">
				<div class="main_footer_top_right_content">
					<div>
						<a href="#">호텔 찾기</a> <a href="#">롯데호텔 소개</a> <a href="#">브랜드
							소개</a> <a href="#">수상</a> <a href="#">갤러리</a> <a href="#">Art
							Experience</a>
					</div>
				</div>
				<div class="main_footer_top_right_content">
					<div>
						<a href="#">고객의 소리</a> <a href="#">지점별 연락처</a> <a href="#">신문고(제보)</a>
						<a href="#">컴플라이언스</a> <a href="#">채용</a>
					</div>
				</div>
				<div class="main_footer_top_right_content">
					<div>
						<a href="#">시니어 레지던스 VL</a> <a href="#">신규 개발</a> <a href="#">임직원</a>
						<a href="#">서비스아카데미</a> <a href="#">사이트맵</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main_footer_bottom">
		<div>
			<div class="main_footer_bottom_a_border">
				<a href="#">개인정보처리방침</a>
			</div>
			<div class="main_footer_bottom_a_border">
				<a href="#">사이트 이용약관</a>
			</div>
			<div class="main_footer_bottom_a_border">
				<a href="#">약관 및 정책</a>
			</div>
			<div>
				<a href="#">쿠키 설정</a>
			</div>
		</div>
	</div>
</footer>
</body>
</html>