<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css" type="text/css">
<title>WhereGo</title>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/view/header2.jsp"%>
	</header>
	<div class="inner">
		<div class="location">
			<a href="#">홈</a> <span>/</span> <span>마이페이지</span>
		</div>
	</div>

	<div id="mypage">
		<div class="headline">
			<h1>나의 멤버십 정보</h1>
		</div>
		<div class="mypage-space">
			<ul class="mylist">
				<li class="mylist-element">
					<span>성명</span>
					<span>${principal.memName}</span>
				</li>
				<li class="mylist-element">
					<span>닉네임</span>
					<span>${principal.memNickname}</span>
				</li>
				<li class="mylist-element">
					<span>이메일</span>
					<span>${principal.memEmail}</span>
				</li>
				<li class="mylist-element">
					<span>연락처</span>
					<span>${principal.memPhone}</span>
				</li>
				<li class="mylist-element">
					<span>보유 포인트</span>
					<span>${principal.memPoint}</span>
				</li>
			</ul>

		</div>

	</div>

</body>
</html>