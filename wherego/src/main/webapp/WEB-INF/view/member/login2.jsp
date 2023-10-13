<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<title>WhereGo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css" type="text/css">
</head>

<header>
	<%@include file="/WEB-INF/view/header2.jsp"%>
</header>
<body>
	<div class="inner">
		<div class="location">
			<a href="#">홈</a> <span>/</span> <span>로그인</span>
		</div>
	</div>
	<div>
		<div class="login-box">

			<h1 class="headline">로그인</h1>

			<div class="jb-division-line login"></div>

			<div class="login-form-box">
				<form action="/wherego/member/login" method="post" class="form_login">
					<div class="login-field">
						<input type="text" class="input-text" name="id" style="width: 470px; margin-top: 0" placeholder="아이디를 입력하세요" >
					</div>
					<div class="login-field">
						<input type="password" class="input-text" name="password" style="width: 470px" placeholder="비밀번호를 입력하세요">
					</div>
					<div class="login-btn">
						<input type="submit" class="login-form-box-btn" value="로그인">
					</div>
				</form>

			</div>

			<div class="login-form-box inputchk">
				<input type="checkbox" id="remember-me"><label class="remember-me-text" for="remember-me">아이디 기억하기</label>
				<div class="login-atext-set">
					<a class="atext_mem first" href="#">아이디 찾기</a> 
					<span class="li-horizontal-divider login"></span> 
					<a class="atext_mem" href="#">비밀번호 찾기</a> 
					<span class="li-horizontal-divider login"></span> 
					<a class="atext_mem" href="#">회원가입</a>
				</div>
			</div>

		</div>
	</div>


</body>

</html>