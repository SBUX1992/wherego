<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/cs/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section id="cs">
	<div class="notice">
		<nav>
			<div>
				<p>
					홈<span>></span>공지사항
				</p>
			</div>
		</nav>
		<section class="list">
			<aside>
				<h2>공지사항</h2>
				<ul>
					<li class="on"><a href="#">전체</a></li>
					<li><a href="#">고객서비스</a></li>
					<li><a href="#">이벤트당첨</a></li>
				</ul>
			</aside>
			<article>
				<nav>
					<h1>전체</h1>
					<h2>공지사항 전체 내용입니다.</h2>
				</nav>
				<c:choose>
					<c:when test="${csNoticeList != null}">
						<table>
							<c:forEach var="csNotice" items="${csNoticeList}">
								<tr>
									<td><a href="/wherego/cs/notice/view">${csNotice.title}</a></td>
									<td>${csNotice.rdate.substring(0, 10)}</td>
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
