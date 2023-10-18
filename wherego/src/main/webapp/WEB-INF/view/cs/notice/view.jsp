<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/header2.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- css -->
<link rel="stylesheet" href="/wherego/css/cs/cs.css">
	<section id="cs">
		<div class="notice">
			<nav>
				<div>
					<p>
						홈<span>></span>공지사항
					</p>
				</div>
			</nav>
			<section class="view">
				<aside>
					<h2>공지사항</h2>
					<ul>
						<li class="on"><a href="#">전체</a></li>
						<li><a href="#">고객서비스</a></li>
						<li><a href="#">이벤트당첨</a></li>
					</ul>
				</aside>
				<article>
					<c:choose>
						<c:when test="${csNoticeView != null}">
							<c:forEach var="notice" items="${csNoticeView}">
								<nav>
									<h2 class="title">${notice.title}</h2>
									<span class="date">${notice.rdate.substring(0, 10)}</span>
								</nav>
								<div class="content">
									<p>${notice.content}</p>
								</div>
								<a href="/wherego/cs/notice/list" class="btnList">목록보기</a>
							</c:forEach>
						</c:when>
					</c:choose>
				
				
								
								
								
								
				</article>
			</section>
		</div>
	</section>
<%@ include file="/WEB-INF/view/footer.jsp" %>
