<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

ul {
	position: fixed;
	margin: 0;
	list-style: none;
	padding-left: 0px;
	right: 0;
	top: 0;
}

li {
	float: left;
	color: #111111;
	text-align: right;
}

.li-horizontal-divider {
	border-left: 1px solid #111111;
	font-size: 10px;
}

.top {
	position: fixed;
	border-bottom: 1px solid #000;
	width: 100%;
	top: 0;
	left: 0;
}

.top-text-col1 {
	font-size: 32px;
}

.top-text-col2 {
	font-size: 16px;
}

.list-item {
	margin: 0 10px;
}
</style>

</head>
<body>
	<div class="top">
		<div class="top-text">
			<a href="#"> <span class="top-text-col1">WHERE GO</span> <span class="top-text-col2">HOTEL & RESORTS</span>
			</a>
		</div>

		<ul>
			<li><a href="#" class="list-item">호텔찾기</a> <span class="li-horizontal-divider"></span></li>
			<li><a href="#" class="list-item">멤버십</a> <span class="li-horizontal-divider"></span></li>
			<li><a href="#" class="list-item">예약조회</a> <span class="li-horizontal-divider"></span></li>
			<li><a href="member/login" class="list-item">로그인</a> <span class="li-horizontal-divider"></span></li>
			<li><a href="member/sign-up2" class="list-item">회원가입</a></li> 
		</ul>


	</div>


</body>
</html>