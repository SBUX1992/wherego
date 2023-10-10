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
				<a href="/wherego/admin/index" class="logo"><img
					src="../../../img/admin/lotte_logo.PNG" alt="admin_logo" /></a>
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
					<h3>공지사항 목록</h3>
					<p>
						HOME > 고객센터 > <strong>공지사항</strong>
					</p>
				</nav>
				<div id="admin_cs_list">
					<div class="admin_cs_list_div">
						<table>
							<tr>
								<th><input type="checkbox" class="all" /></th>
								<th>번호</th>
								<th>유형</th>
								<th>제목</th>
								<th>조회</th>
								<th>날짜</th>
								<th>관리</th>
							</tr>
							<tr class="notice_list">
								<td><input type="checkbox"></td>
								<td>1</td>
								<td>고객 서비스</td>
								<td>[안내] 해외결제 사칭 문자 주의</td>
								<td>5</td>
								<td>2023.10.10</td>
								<td>
									<a href="/wherego/admin/cs/notice/modify">[수정]</a>
									<a href="#">[삭제]</a>
								</td>
							</tr>
							<tr class="notice_list">
								<td><input type="checkbox"></td>
								<td>1</td>
								<td>고객 서비스</td>
								<td>[안내] 해외결제 사칭 문자 주의</td>
								<td>5</td>
								<td>2023.10.10</td>
								<td>
									<a href="/wherego/admin/cs/notice/modify">[수정]</a>
									<a href="#">[삭제]</a>
								</td>
							</tr>
						</table>
						<div class="btn">
							<a href="#" class="btn_selectDelete selectDelete">선택삭제</a> <a
								href="/wherego/admin/cs/notice/write"
								class="btn_register register">작성하기</a>
						</div>

						<!-- 상품목록 페이지번호 -->
						<div class="paging">
							<span class="prev"> <a href="#">&lt;&nbsp;이전</a>
							</span> <span class="num"> <a href="#" class="on">1</a> <a
								href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
								<a href="#">6</a> <a href="#">7</a>
							</span> <span class="next"> <a href="#">다음&nbsp;&gt;</a>
							</span>
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
