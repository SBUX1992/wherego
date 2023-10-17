<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css" type="text/css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
<meta charset="UTF-8">
<title>WhereGo</title>
</head>
<header><%@include file="/WEB-INF/view/header2.jsp"%></header>
<body style="font-family: 'Noto Sans KR', sans-serif">
	<div class="inner">
		<div class="location">
			<a href="${pageContext.request.contextPath}/main">홈</a> <span>/</span> <span>회원탈퇴</span>
		</div>
	</div>
	<div class="headline">
		<h1>회원 탈퇴</h1>
		<p class="head-p">외부로부터 고객님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인 합니다.</p>
	</div>

	<div id="delete-form-div">
		<form id="delete-form" action="delete" method="post">
			<label for="delete-password-chk">비밀번호</label>
			<div>
				<input id="delete-password-chk" type="password" name="password" placeholder="비밀번호를 입력하세요">
			</div>
			
			<div class="jb-division-line delete-page"></div>
			
			<input id="delete-submit" type="submit">
		</form>

	</div>


	<script>
		document.getElementById("delete-form").addEventListener("submit",
				function(event) {
					// 이벤트를 중지하여 기본 제출 동작을 막음
					event.preventDefault();

					// 사용자에게 확인 메시지를 표시
					if (confirm("정말 삭제하시겠습니까?")) {
						// 확인을 클릭한 경우, 폼을 제출
						this.submit();
						alert("탈퇴 처리되었습니다.");
					} else {
						// 취소를 클릭한 경우, 폼 제출을 취소
						// 다른 조치를 취할 수도 있음
					}
				});
	</script>

</body>
</html>