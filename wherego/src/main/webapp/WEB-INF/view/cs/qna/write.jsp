<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/cs/header.jsp"%>
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
		<section class="write">
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
				<form action="/cs/qna/write" method="post">
					<table class="cs_write_table">
						<tr>
							<td>문의유형</td>
							<td><select name="type">
									<option value="0">선택</option>
									<option>가입</option>
									<option>탈퇴</option>

							</select></td>
						</tr>
						<tr>
							<td>문의제목</td>
							<td><textarea id="title" name="title"
									placeholder="제목을 입력하세요."
									onkeydown="return preventEnterKey(event)" style="height: 50px"></textarea></td>
						</tr>
						<tr>
							<td>문의내용</td>
							<td><textarea id="content" name="content" placeholder="내용을 입력하세요."
									style="height: 350px"></textarea></td>
						</tr>
					</table>
					<div class="btn_right">
						<a href="/wherego/cs/qna/list" class="btnList">취소하기</a> <input
							type="submit" class="btnSubmit" value="등록하기" />
					</div>
				</form>
			</article>
		</section>
	</div>
</section>
<footer>
	<div>
		<p>Lotte Hotel&Resorts</p>
	</div>
</footer>
<script>
	/* title textarea 엔터키 금지 */
	function preventEnterKey(event) {
		if (event.keyCode === 13) {
			event.preventDefault();
			return false;
		}
	}
</script>
</body>
</html>