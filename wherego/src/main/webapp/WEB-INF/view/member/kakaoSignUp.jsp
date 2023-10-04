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
		<h2>카카오 회원가입</h2>
		<form action="/wherego/member/kakao-sign-up" method="post">
			<div class="form-group">
				<label for="mem_id">ID</label> <input type="text" class="form-control" id="mem_id" placeholder="Enter id" name="id" style="width: 500px" value="${id}" readonly>
			</div>
			<div class="form-group">
				<label for="mem_nickname">닉네임</label> <input type="text" class="form-control" id="mem_nickname" placeholder="Enter nickname" name="nickname" style="width: 500px">
			</div>
			<div class="form-group">
				<label for="mem_name">성명</label> <input type="text" class="form-control" id="mem_name" placeholder="Enter name" name="name" style="width: 500px" value="${profile.getProperties().getNickname()}">
			</div>
			<div class="form-group">
				<label for="mem_email">이메일</label> <input type="text" class="form-control" id="mem_email" placeholder="Enter email" name="email" style="width: 500px"
					value="${profile.getKakaoAccount().getEmail()}" readonly>
			</div>
			<div class="form-group">
				<label for="mem_phone">전화번호</label> <input type="text" class="form-control" id="mem_phone" placeholder="Enter phone number" name="phone" style="width: 500px">
			</div>
			<div class="form-group">
				<label for="mem_addr1">도로명 주소</label> <input type="text" class="form-control" id="mem_addr1" placeholder="Enter address" name="addr1" style="width: 450px">
			</div>
			<div class="form-group">
				<label for="mem_addr2">나머지 주소</label> <input type="text" class="form-control" id="mem_addr2" placeholder="나머지 주소" name="addr2" style="width: 500px">
			</div>
			<button type="submit" class="btn btn-primary" style="width: 500px">회원 가입</button>
		</form>
	</div>

</body>
</html>
