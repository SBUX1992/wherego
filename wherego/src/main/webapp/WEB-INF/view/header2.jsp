<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	width: auto;
	box-sizing: border-box;
	position: absolute;
	height: 20px;
	top: 5px;
	right: 0;
	list-style: none;
	float: right;
	margin-right: 80px;
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

.li-horizontal-divider.last {
	border-left: none;
}

.top {
	box-sizing: border-box;
	position: relative;
	border-bottom: 1px solid #AFA18A;
	width: 100%;
	min-height: 60px;
	top: 0;
	left: 0;
	margin: 0;
	height: 60px;
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
<header>
	<!-- 10-17 강중현 권한별 표시내용 수정 -->
	<body>
		<div class="top">
			<div class="top-text-area">
				<a href="/wherego/main"> <img src="/wherego/img/logo.PNG" height="58px" alt="로고" />
				</a>
=======
<body>
	<header>
		<!-- 10-17 강중현 권한별 표시내용 수정 -->
		<body>
			<div class="top">
				<div class="top-text-area">
					<a href="/wherego/main"> <img src="/wherego/img/logo.PNG"
						alt="로고" style="height: 50px; margin-top: 3px;"/>
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
										<li class="header2Li"><a href="/wherego/cs/notice/list"
											class="list-item">공지사항</a><span>|</span></li>
										<li class="header2Li"><a href="/wherego/cs/qna/list"
											class="list-item">Q&A</a><span>|</span></li>
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
								<li class="header2Li"><a href="/wherego/admin/index"
									class="list-item">관리자 페이지</a> <span>|</span></li>
								<li class="header2Li"><a
									href="${pageContext.request.contextPath}/member/logout"
									class="list-item">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
>>>>>>> cca9a5a66fefef4283efccb88f21a1ca71e4b18a
			</div>

	</header>

<<<<<<< HEAD
						<c:otherwise>
							<!-- 관리자일 경우 추가할 메뉴나 처리 -->
							<li class="header2Li"><a href="/wherego/cs/notice/list"
								class="list-item">고객 공지사항</a><span>|</span></li>
							<li class="header2Li"><a href="/wherego/cs/qna/list"
								class="list-item">고객 Q&A</a><span>|</span></li>
							<li class="header2Li"><a href="/wherego/admin/index"
								class="list-item">관리자 페이지</a> <span>|</span></li>
							<li class="header2Li"><a
								href="${pageContext.request.contextPath}/member/logout"
								class="list-item">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>


	</body>
</header>
</html>
