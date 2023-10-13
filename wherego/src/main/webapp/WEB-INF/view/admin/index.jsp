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
						</ol>
					</li>
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
						<a href="#"><h4>공지사항</h4></a>
						<article>
							<div>
								<a href="#"> <span>[공지] 주기적인 비밀번호 변경을 하세요. 개인 정보를 소중히
										합시다.</span>
								</a> <span>20-07-08 12:23</span>
							</div>
							<div>
								<a href="#"> <span>[공지] 주기적인 비밀번호 변경을 하세요. 개인 정보를 소중히
										합시다.</span>
								</a> <span>20-07-08 12:23</span>
							</div>
							<div>
								<a href="#"> <span>[공지] 주기적인 비밀번호 변경을 하세요. 개인 정보를 소중히
										합시다.</span>
								</a> <span>20-07-08 12:23</span>
							</div>
							<div>
								<a href="#"> <span>[공지] 주기적인 비밀번호 변경을 하세요. 개인 정보를 소중히
										합시다.</span>
								</a> <span>20-07-08 12:23</span>
							</div>
							<div>
								<a href="#"> <span>[공지] 주기적인 비밀번호 변경을 하세요. 개인 정보를 소중히
										합시다.</span>
								</a> <span>20-07-08 12:23</span>
							</div>
						</article>
					</div>
					<div>
						<a href="#"><h4>고객문의</h4></a>
						<article>
							<div>
								<a href="#"><span>[문의] 조식 추가 금액은 얼마인가요?</span></a> <span>20-07-08
									12:23</span>
							</div>
							<div>
								<a href="#"><span>[문의] 조식 추가 금액은 얼마인가요?</span></a> <span>20-07-08
									12:23</span>
							</div>
							<div>
								<a href="#"><span>[문의] 조식 추가 금액은 얼마인가요?</span></a> <span>20-07-08
									12:23</span>
							</div>
							<div>
								<a href="#"><span>[문의] 조식 추가 금액은 얼마인가요?</span></a> <span>20-07-08
									12:23</span>
							</div>
							<div>
								<a href="#"><span>[문의] 조식 추가 금액은 얼마인가요?</span></a> <span>20-07-08
									12:23</span>
							</div>
						</article>
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