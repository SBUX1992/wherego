<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/admin/header.jsp"%>
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
					<h3>공지사항 수정하기</h3>
					<p>
						HOME > 고객센터 > <strong>공지사항</strong>
					</p>
				</nav>
				<div id="admin_cs_write">
					<div class="admin_cs_write_div">
						<form action="#" method="post">
							<input type="hidden" name="no" value="" />
							<table>
								<tbody>
									<tr>
										<td>유형</td>
										<td><select name="cate" id="">
												<option value="고객 서비스">고객 서비스</option>
												<option value="이벤트 당첨">이벤트 당첨</option>
										</select></td>
									</tr>
									<tr>
										<td>제목</td>
										<td><textarea name="title" rows="1"
												maxlength="20" onkeydown="return preventEnterKey(event)"></textarea></td>
									</tr>
									<tr>
										<td>내용</td>
										<td><textarea name="content" id="content"
												rows="22" maxlength="1000"></textarea></td>
									</tr>
								</tbody>
							</table>
							<div class="btn_right">
								<a href="/wherego/admin/cs/notice/list" class="btn_red">취소</a> <a
									class="btn_register" type="submit" name="submit_board">수정완료</a>
							</div>
						</form>
					</div>
				</div>
			</section>
		</main>
<%@ include file="/WEB-INF/view/footer.jsp" %>

		<script>
			/* title textarea 엔터키 금지 */
			function preventEnterKey(event) {
				if (event.keyCode === 13) {
					event.preventDefault();
					return false;
				}
			}
		</script>
