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
				<a href="#" class="logo"><img src="../../../img/lotte_logo.PNG"
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
						</ol></li>
				</ul>
			</aside>
			<section id="admin-index">
				<nav>
					<h3>문의하기 답변</h3>
					<p>
						HOME > 고객센터 > <strong>공지사항</strong>
					</p>
				</nav>
				<div id="admin_cs_view">
					<div class="admin_cs_view_div">
						<table border="0">
							<tr>
								<th>글유형</th>
								<td><h2>회원</h2></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><h2 class="title">[가입] 가입 문의내용</h2></td>
							</tr>
							<tr>
								<th>내용</th>
								<td>
									<p>
										개인회원에서 법인회원(사업자 회원)으로 전환은 불가하므로 법인회원(사업자 회원) 전환은 신규 가입으로 진행을
										해야 합니다. <br /> <br /> 감사합니다.
									</p>
								</td>
							</tr>
							<tr>
								<th>답변</th>
								<td><textarea name="comment" id="comment" rows="22"
										maxlength="1000"></textarea></td>
							</tr>
						</table>
						<div class="btn_right">
							<button class="btn_red">삭제</button>
							<button class="btn_register">답변등록</button>
							<a href="/wherego/admin/cs/qna/list" class="btn_gray">목록</a>
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