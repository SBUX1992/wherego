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
					<h3>공지사항 수정하기</h3>
					<p>
						HOME > 고객센터 > <strong>공지사항</strong>
					</p>
				</nav>
				<div id="admin_cs_write">
					<div class="admin_cs_write_div">
						<form action="#" method="post">
							<input type="hidden" name="no" value="" />
							<table>
								<tbody>
									<tr>
										<td>유형</td>
										<td><select name="cate" id="">
												<option value="고객 서비스">고객 서비스</option>
												<option value="이벤트 당첨">이벤트 당첨</option>
										</select></td>
									</tr>
									<tr>
										<td>제목</td>
										<td><textarea name="title" rows="1"
												maxlength="20" onkeydown="return preventEnterKey(event)"></textarea></td>
									</tr>
									<tr>
										<td>내용</td>
										<td><textarea name="content" id="content"
												rows="22" maxlength="1000"></textarea></td>
									</tr>
								</tbody>
							</table>
							<div class="btn_right">
								<a href="/wherego/admin/cs/notice/list" class="btn_red">취소</a> <a
									class="btn_register" type="submit" name="submit_board">수정완료</a>
							</div>
						</form>
					</div>
				</div>
			</section>
		</main>
		<footer>
			<div>
				<p>Lotte Hotel&Resorts</p>
			</div>
		</footer>

		<script>
			/* title textarea 엔터키 금지 */
			function preventEnterKey(event) {
				if (event.keyCode === 13) {
					event.preventDefault();
					return false;
				}
			}
		</script>
	</div>
</body>
</html>