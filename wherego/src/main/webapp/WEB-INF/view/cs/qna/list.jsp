<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/header2.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section id="cs">
	<div class="qna">
		<nav>
			<div>
				<p>
					홈<span>></span>문의하기
				</p>
			</div>
		</nav>
		<section class="list">
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
				<nav>
					<h1>회원</h1>
					<h2>회원관련 문의 내용입니다.</h2>
				</nav>
				<c:choose>
					<c:when test="${csQnaList != null}">
						<table>
							<c:forEach var="csQna" items="${csQnaList}">
								<tr>
									<td><a href="/wherego/cs/qna/view/${csQna.no}">${csQna.title}</a></td>
									<td>${csQna.memId}</td>
									<td>${csQna.rdate.substring(0, 10)}</td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
				</c:choose>
				<div class="page">
					<a href="#" class="prev">이전</a> <a href="#" class="num on">1</a> <a
						href="#" class="num">2</a> <a href="#" class="num">3</a> <a
						href="#" class="next">다음</a>
				</div>
				<a href="/wherego/cs/qna/write" class="btnWrite">문의하기</a>
			</article>
		</section>
	</div>
</section>
<footer>
	<div>
		<p>Lotte Hotel&Resorts</p>
	</div>
</footer>
</body>
</html>