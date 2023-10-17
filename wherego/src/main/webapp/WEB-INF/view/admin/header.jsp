<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<div class="top">
				<div class="top-text-area">
					<a href="#"> <span class="top-text col1">WHERE GO</span> <span
						class="top-text col2">HOTEL & RESORTS</span>
					</a>
				</div>

				<ul class="header2Ul">
					<li class="header2Li"><a href="acc/list" class="list-item">호텔찾기</a>
						<span class="li-horizontal-divider"></span></li>
					<li class="header2Li"><a href="#" class="list-item">멤버십</a> <span
						class="li-horizontal-divider"></span></li>
					<li class="header2Li"><a href="#" class="list-item">예약조회</a> <span
						class="li-horizontal-divider"></span></li>
					<c:choose>
						<c:when test="${principal == null}">
							<li><a
								href="${pageContext.request.contextPath}/member/login2"
								class="list-item">로그인</a> <span class="li-horizontal-divider"></span></li>
							<li><a
								href="${pageContext.request.contextPath}/member/sign-up2"
								class="list-item">회원가입</a></li>
						</c:when>
						<c:when test="${principal != null}">
							<li><a href="#" class="list-item">마이페이지</a> <span
								class="li-horizontal-divider"></span></li>
							<li><a
								href="${pageContext.request.contextPath}/member/logout"
								class="list-item">로그아웃</a></li>
						</c:when>
					</c:choose>
				</ul>

			</div>
		</header>