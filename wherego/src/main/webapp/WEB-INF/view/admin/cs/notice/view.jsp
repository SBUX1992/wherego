<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>롯데호텔::관리자</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://kit.fontawesome.com/20962f3e4b.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<!-- css -->
<link rel="stylesheet" href="/wherego/css/admin/admin.css">
</head>
<body>
	<div id="admin-wrapper">
		<header>
			<div>
				<a href="#" class="logo"><img src="../../../img/admin/lotte_logo.PNG"
					alt="admin_logo" /></a>
				<p>
					<span>홍길동님 반갑습니다.</span> <a href="#">HOME |</a> <a href="#">로그아웃
						|</a> <a href="#">고객센터</a>
				</p>
			</div>
		</header>
		<main>
			<aside>
				<ul id="gnb">
					<li><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i>환경설정</a>
						<ol>
							<li><a href="#">기본환경설정</a></li>
							<li><a href="#">회원관리</a></li>
						</ol></li>
					<li><a href="#"><i class="fa fa-pencil-square-o"
							aria-hidden="true"></i>게시판관리</a>
						<ol>
							<li><a href="/wherego/admin/cs/notice/list">공지사항</a></li>
							<li><a href="/wherego/admin/cs/qna/list">고객문의</a></li>
						</ol>
					</li>
				</ul>
			</aside>
			<section id="admin-index">
				<nav>
					<h3>공지사항 보기</h3>
					<p>
						HOME > 고객센터 > <strong>공지사항</strong>
					</p>
				</nav>
				<div id="admin_cs_view">
					<div class="admin_cs_view_div">
						<table border="0">
							<tr>
								<th>글유형</th>
								<td><h2>고객 서비스</h2></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><h2 class="title">[안내] 해외결제 사칭 문자 주의</h2></td>
							</tr>
							<tr>
								<th>내용</th>
								<td>
									<p>
										안녕하세요. 롯데호텔입니다. <br /> 롯데호텔을 사칭하는 피싱 문자가 최근 다시 신고되고 있어 주의
										안내드립니다. <br /> 승인결제 피싱 문자 또는 발신번호 006, 002 등으로 시작하는 피싱 문자를
										수신하신 고객님께서는 통화 또는 문자 내 기재된 번호/링크 등을 클릭하지 않도록 주의하여 주시기 바랍니다. <br />
										<br /> 감사합니다.
									</p>
								</td>
							</tr>
						</table>
						<div class="btn_right">
							<button class="btn_red">삭제</button>
							<button class="btn_register">수정</button>
							<a href="/wherego/admin/cs/notice/list" class="btn_gray">목록</a>
						</div>
					</div>
				</div>
			</section>
		</main>
		<footer>
			<div>
				<p>Lotte Hotel&Resorts</p>
			</div>
		</footer>
	</div>
</body>
</html>