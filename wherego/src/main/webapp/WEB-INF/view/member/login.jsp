<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<div class="container" style="width: 600px;">
<<<<<<< HEAD
		<h2>Where Go!</h2>
		<form action="/action_page.php">
			<div class="form-group">
				<label for="mem_id">ID :</label> <input type="text" class="form-control" id="mem_id" placeholder="Enter ID" name="mem_id" style="width: 500px">
			</div>
			<div class="form-group">
				<label for="mem_password">Password :</label> <input type="password" class="form-control" id="mem_password" placeholder="Enter password" name="mem_password" style="width: 500px">
			</div>
			<div class="form-group form-check">
				<label class="form-check-label"> <input class="form-check-input" type="checkbox" name="remember"> 로그인 기억하기
				</label>
			</div>
			<button type="submit" class="btn btn-primary" style="width: 500px">Submit</button>
=======
		<h2 style="text-align: center;">로그인</h2>
		<form action="/wherego/member/login" method="post">
			<div class="form-group">
				<input type="text" class="form-control" id="id" placeholder="아이디를 입력해주세요" name="id" style="margin: 0 auto; width: 400px; height: 45px">
			</div>
			<div class="form-group" style="margin: 0 auto; width: 400px">
				<input type="password" class="form-control" id="password" placeholder="비밀번호를 입력해주세요" name="password" style="margin: 0 auto; width: 400px; height: 45px">
			</div>
			<div class="form-group form-check" style="margin: 15px auto; width: 400px">
				<label class="form-check-label"> <input class="form-check-input" type="checkbox" name="remember">로그인 기억하기
				</label>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary" style="display: block; margin: 0 auto; width: 400px; height: 45px;">로그인</button>
			</div>

			<div class="form-group">
				<button type="button" class="btn btn-outline-primary" onclick="location.href='sign-up'" style="display: block; margin: 0 auto; width: 400px; height: 45px">회원가입</button>
			</div>
			<div class="form-group" style="margin: 15px auto; width: 400px; display: flex;">
				<a href="https://kauth.kakao.com/oauth/authorize?client_id=ae138cb481abfa831e99189dc79e66b1&redirect_uri=http://localhost:8080/wherego/member/kakao/callback&response_type=code"><img
					src="${pageContext.request.contextPath}/img/kakao_login_medium.png" alt="" style="margin: 0 auto;"> </a> <a
					style="display: inline-block; width: 192px; height: 45px; border: #000 1px solid; box-sizing: border-box; margin-left: 16px">소셜로그인 하나 더 예정</a>
			</div>
>>>>>>> 63b9ac653e59da5b7450053eb9313bc18e0187ac
		</form>
	</div>
</body>

</html>