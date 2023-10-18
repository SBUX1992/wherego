<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/header2.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- css -->
<link rel="stylesheet" href="/wherego/css/cs/cs.css">
	<section id="cs">
		<div class="qna">
			<nav>
				<div>
					<p>
						홈<span>></span>문의하기
					</p>
				</div>
			</nav>
			<section class="view">
				<aside>
					<h2>문의하기</h2>
					<ul>
						<li class="on"><a href="#">회원</a></li>
						<li><a href="#">쿠폰/이벤트</a></li>
						<li><a href="#">주문/결제</a></li>
						<li><a href="#">취소/반품/교환</a></li>
					</ul>
				</aside>
				<article>
					<c:choose>
						<c:when test="${csQnaView != null}">
							<c:forEach var="qna" items="${csQnaView}">
								<nav>
									<h2 class="title">${qna.title}</h2>
									<p>
										<span>${qna.rdate.substring(0, 10)}</span>
									</p>
								</nav>
								<div class="content">
									<p>${qna.content}</p>
								</div>
								<div class="comment">
									<p>${qna.comment}</p>
								</div>
								<a href="/wherego/cs/qna/list" class="btnList">목록보기</a>
							</c:forEach>
						</c:when>
					</c:choose>	
							
							
				</article>
			</section>
		</div>
	</section>
<%@ include file="/WEB-INF/view/footer.jsp" %>