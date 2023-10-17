<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>호텔::관리자</title>
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
			<div class="top">
				<div class="top-text-area">
					<a href="/wherego/main"> <img src="/wherego/img/hotel_logo.PNG"
						alt="로고" />
					</a>
				</div>
				<div class="top2">
					<ul class="header2Ul">
						<c:set var="isAdmin" value="${sessionScope.isAdmin}" />
						<c:choose>
							<c:when test="${empty isAdmin || isAdmin == false}">
								<li class="header2Li"><a
									href="${pageContext.request.contextPath}/acc/list"
									class="list-item">호텔찾기</a> <span>|</span></li>
								<li class="header2Li"><a
									href="${pageContext.request.contextPath}/member/my-page"
									class="list-item">예약조회</a><span>|</span></li>

								<c:choose>
									<c:when test="${principal == null}">
										<li class="header2Li"><a
											href="${pageContext.request.contextPath}/member/login"
											class="list-item">로그인</a><span>|</span></li>
										<li class="header2Li"><a
											href="${pageContext.request.contextPath}/member/sign-up"
											class="list-item">회원가입</a></li>
									</c:when>
									<c:otherwise>
										<li class="header2Li"><a
											href="${pageContext.request.contextPath}/member/my-page"
											class="list-item">마이페이지</a> <span>|</span></li>
										<li class="header2Li"><a
											href="${pageContext.request.contextPath}/member/logout"
											class="list-item">로그아웃</a></li>
									</c:otherwise>
								</c:choose>
							</c:when>

							<c:otherwise>
								<!-- 관리자일 경우 추가할 메뉴나 처리 -->
								<li class="header2Li"><a href="/wherego/cs/notice/list"
									class="list-item">고객 공지사항</a><span>|</span></li>
								<li class="header2Li"><a href="/wherego/cs/qna/list"
									class="list-item">고객 Q&A</a><span>|</span></li>
								<li class="header2Li"><a href="/wherego/main"
									class="list-item">메인 페이지</a> <span>|</span></li>
								<li class="header2Li"><a
									href="${pageContext.request.contextPath}/member/logout"
									class="list-item">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</header>