<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

</head>

<body>
	<div class="container" style="width: 600px;">
		<h2>카카오 회원가입</h2>
		<form action="/wherego/member/kakao-sign-up" method="post">

			<input type="hidden" class="form-control" id="mem_id" placeholder="Enter id" name="id" style="width: 500px" value="${id}" readonly>

			<div class="form-group">
				<label for="mem_nickname">닉네임</label> 
				<div style="display: flex;">
					<input type="text" class="form-control" id="mem_nickname" placeholder="닉네임" name="nickname" style="width: 400px" required="required"> 
					<input type="button" onclick="nickchk()" value="중복확인" class="btn btn-outline-primary" style="margin-left: 10px" >
				</div>
				<label for="mem_nickname" class="form-label" id="nicknameMatchLabel" style="margin: 0"></label>
			</div>
			
			<div class="form-group">
				<label for="mem_name">성명</label> <input type="text" class="form-control" id="mem_name" placeholder="Enter name" name="name" style="width: 500px" value="${profile.getProperties().getNickname()}" required="required">
			</div>
			
			<div class="form-group">
				<label for="mem_email">이메일</label> <input type="text" class="form-control" id="mem_email" placeholder="Enter email" name="email" style="width: 500px"
					value="${profile.getKakaoAccount().getEmail()}" readonly>
			</div>
			
			<div class="form-group">
				<label for="mem_phone">전화번호</label> <input type="text" class="form-control" id="mem_phone" placeholder="Enter phone number" name="phone" style="width: 500px" required="required">
			</div>
			
			<div class="form-group">
				<label for="mem_addr1">도로명 주소</label>
				<div style="display: flex; margin-bottom: 8px">
					<input type="text" class="form-control" id="mem_addr1" placeholder="도로명주소" name="addr1" style="width: 400px;" required="required" readonly="readonly"> 
					<input type="button" class="btn btn-outline-primary" onclick="execDaumPostcode()" value="주소검색" style="margin-left: 10px"></input>
				</div>
				<div id="wrap" style="display: none; border: 1px solid; width: 100%; height: 400px; margin: 5px 0; position: relative">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1" onclick="foldDaumPostcode()"
						alt="접기 버튼">
				</div>
				<input type="text" class="form-control" id="mem_addr2" placeholder="나머지 주소" name="addr2" style="width: 500px" required="required">
			</div>
			
			<button type="submit" class="btn btn-primary" style="width: 500px">회원 가입</button>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="${pageContext.request.contextPath}/js/member/member.js"></script>
</body>
</html>
