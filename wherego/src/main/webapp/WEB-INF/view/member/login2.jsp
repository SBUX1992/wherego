<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
  <title>WhereGo</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css" type="text/css" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>

<%@include file="/WEB-INF/view/header2.jsp"%>
<body style="font-family: 'Noto Sans KR', sans-serif">
  <div class="inner">
    <div class="location"><a href="/wherego/main">홈</a> <span>/</span> <span>로그인</span></div>
  </div>
  <div>
    <div class="login-box">
      <h1 class="mem headline">로그인</h1>

      <div class="jb-division-line login"></div>

      <div class="login-form-box">
        <form action="/wherego/member/login" method="post" class="form_login">
          <div class="login-field">
            <input type="text" class="input-text" name="id" style="width: 470px; margin-top: 0" placeholder="아이디를 입력하세요" />
          </div>
          <div class="login-field">
            <input type="password" class="input-text" name="password" style="width: 470px" placeholder="비밀번호를 입력하세요" />
          </div>
          <div class="login-btn">
            <input type="submit" class="login-form-box-btn" value="로그인" />
          </div>
        </form>
      </div>

      <div class="login-form-box inputchk">
        <input type="checkbox" id="remember-me" /><label class="remember-me-text" for="remember-me">아이디 기억하기</label>
        <div class="login-atext-set">
          <a class="atext_mem first" href="#">아이디 찾기</a>
          <span class="li-horizontal-divider login"></span>
          <a class="atext_mem" href="#">비밀번호 찾기</a>
          <span class="li-horizontal-divider login"></span>
          <a class="atext_mem" href="${pageContext.request.contextPath}/member/sign-up">회원가입</a>
        </div>
      </div>
      
      <div class="social-login-wrap">
      	<a><img
			  class="fit-picture"
			  src="${pageContext.request.contextPath}/img/member/icon-100-apple.png"
			  alt="" />
		</a>
		<a><img
			  class="fit-picture"
			  src="${pageContext.request.contextPath}/img/member/icon-100-google.png"
			  alt="" />
		</a>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=ae138cb481abfa831e99189dc79e66b1&redirect_uri=http://localhost:8080/wherego/member/kakao/callback&response_type=code"><img
			  class="fit-picture"
			  src="${pageContext.request.contextPath}/img/member/icon-100-kakao.png"
			  alt="" />
		</a>
		<a><img
			  class="fit-picture"
			  src="${pageContext.request.contextPath}/img/member/icon-100-lpoint.png"
			  alt="" />
		</a>
		<a><img
			  class="fit-picture"
			  src="${pageContext.request.contextPath}/img/member/icon-100-naver.png"
			  alt="" />
		</a>
      </div>
    </div>
  </div>
</body>
</html>
