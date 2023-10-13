<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/admin/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<main>
			<aside>
				<ul id="gnb">
					<li><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i>환경설정</a>
						<ol>
							<li><a href="#">기본환경설정</a></li>
							<li><a href="#">회원관리</a></li>
						</ol></li>
					<li><a href="#"><i class="fa fa-pencil-square-o"
							aria-hidden="true"></i>게시판관리</a>
						<ol>
							<li><a href="/wherego/admin/cs/notice/list">공지사항</a></li>
							<li><a href="/wherego/admin/cs/qna/list">고객문의</a></li>
						</ol>
					</li>
				</ul>
			</aside>
			<section id="admin-index">
				<nav>
					<h3>공지사항 보기</h3>
					<p>
						HOME > 고객센터 > <strong>공지사항</strong>
					</p>
				</nav>
				<div id="admin_cs_view">
					<div class="admin_cs_view_div">
						<c:choose>
							<c:when test="${noticeView != null}">
								<table border="0">
									<c:forEach var="notice" items="${noticeView}">
										<tr>
											<th>글유형</th>
											<td><h2>고객 서비스</h2></td>
										</tr>
										<tr>
											<th>제목</th>
											<td><h2 class="title">${notice.title}</h2></td>
										</tr>
										<tr>
											<th>내용</th>
											<td>
												<p>${notice.content}</p>
											</td>
										</tr>
									</c:forEach>
								</table>
							</c:when>
						</c:choose>
						<div class="btn_right">
							<button class="btn_red">삭제</button>
							<button class="btn_register">수정</button>
							<a href="/wherego/admin/cs/notice/list" class="btn_gray">목록</a>
						</div>
					</div>
				</div>
			</section>
		</main>
		<footer>
			<div>
				<p>Lotte Hotel&Resorts</p>
			</div>
		</footer>
	</div>
</body>
</html>