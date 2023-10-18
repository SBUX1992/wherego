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
				</ol></li>
		</ul>
	</aside>

	<section id="admin-index">
		<nav>
			<h3>관리자 메인</h3>
			<p>
				HOME > <strong>메인</strong>
			</p>
		</nav>

		<h4>고객 문의 현황</h4>
		<article>
			<table>
				<tr>
					<td><strong>신규공지</strong> <span>5</span></td>
					<td><strong>신규문의</strong> <span>30</span></td>
					<td><strong>답변완료</strong> <span>25</span></td>
					<td><strong>답변대기</strong> <span>5</span></td>
				</tr>
			</table>
		</article>
		<div>
			<div>
				<a href="/wherego/admin/cs/notice/list"><span style="font-size: 15px; font-weight: bold;">공지사항</span></a>
				<article>
					<c:choose>
						<c:when test="${noticeList != null}">
							<c:forEach var="notice" items="${noticeList}" begin="0" end="4">
								<div>
									<a href="/wherego/admin/cs/notice/view/${notice.no}"><span>${notice.title}</span></a> <span>${notice.rdate.substring(0, 10)}</span>
								</div>
							</c:forEach>
						</c:when>
					</c:choose>
				</article>
			</div>
			<div>
				<a href="/wherego/admin/cs/qna/list"><span style="font-size: 15px; font-weight: bold;">고객문의</span></a>
				<article>
					<c:choose>
						<c:when test="${qnaList != null}">
							<c:forEach var="qna" items="${qnaList}" begin="0" end="4">
								<div>
									<a href="/wherego/admin/cs/qna/view/${qna.no}"> <span>${qna.title}</span></a> <span>${qna.rdate.substring(0, 10)}</span>
								</div>
							</c:forEach>
						</c:when>
					</c:choose>
				</article>
			</div>
		</div>
	</section>
</main>
<%@ include file="/WEB-INF/view/footer.jsp" %>