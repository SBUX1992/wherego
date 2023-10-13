<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/cs/header.jsp"%>
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
					<nav>
						<h2 class="title">[가입] 가입 문의내용</h2>
						<p>
							<span>강**</span> <span>2022-11-21</span>
						</p>
					</nav>
					<div class="content">
						<p>
							개인회원에서 법인회원(사업자 회원)으로 전환은 불가하므로 법인회원(사업자 회원) 전환은 신규 가입으로 진행을 해야
							합니다. <br /> <br /> 감사합니다.
						</p>
					</div>
					<div class="comment">
						<p>
							답변입니다
						</p>
					</div>
					<a href="/wherego/cs/qna/list" class="btnList">목록보기</a>
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