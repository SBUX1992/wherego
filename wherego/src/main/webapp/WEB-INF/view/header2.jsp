<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

.header2Ul {
	width: 335px;
	box-sizing: border-box;
	position: absolute;
	height: 20px;
	top: 5px;
	right: 0;
	margin: 0;
	list-style: none;
	padding-left: 0px;
	top: 5px;
}

.header2Li {
	float: left;
	margin: 0;
	white-space: nowrap;
	overflow: hidden;
}

.li-horizontal-divider {
	border-left: 1px solid #666666;;
	font-size: 10px;
	margin: 0;
}

.top {
	box-sizing: border-box;
	position: relative;
	border-bottom: 1px solid #AFA18A;
	width: 100%;
	min-height: 40px;
	height: 40px;
	top: 0;
	left: 0;
	margin: 0;
	height: 40px;
}

.top-text-area {
	margin: 0px 10px;
}

.top-text {
	color: #897766;
	font-weight: bold;
}

.top-text.col1 {
	font-size: 24px;
}

.top-text.col2 {
	font-size: 16px;
}

.list-item {
	margin: 0 10px;
	color: #666666;
}
</style>

</head>
<body>
	<div class="top">
		<div class="top-text-area">
			<a href="${pageContext.request.contextPath}/main"> <span class="top-text col1">WHERE GO</span> <span class="top-text col2">HOTEL & RESORTS</span>
			</a>
		</div>

		<div class="top2">
			<ul class="header2Ul">
				<li class="header2Li"><a href="${pageContext.request.contextPath}/acc/list" class="list-item">호텔찾기</a> <span class="li-horizontal-divider"></span></li>
				<li class="header2Li"><a href="${pageContext.request.contextPath}/member/my-page" class="list-item">예약조회</a> <span class="li-horizontal-divider"></span></li>
				<c:choose>
					<c:when test="${principal == null || principal == null}">
						<li><a href="${pageContext.request.contextPath}/member/login" class="list-item">로그인</a> <span class="li-horizontal-divider"></span></li>
						<li><a href="${pageContext.request.contextPath}/member/sign-up" class="list-item">회원가입</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/member/my-page" class="list-item">마이페이지</a> <span class="li-horizontal-divider"></span></li>
						<li><a href="${pageContext.request.contextPath}/member/logout" class="list-item">로그아웃</a></li>
					</c:otherwise>
				</c:choose>

			</ul>
		</div>
	</div>


</body>
</html>