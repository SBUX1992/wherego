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
		<h1 id="delete-h1">회원 탈퇴</h1>
		<h2 id="delete-h2">WHERE GO 회원을 탈퇴하시겠습니까?</h2>
		<p id="delete-p">
			회원 탈퇴를 신청하시면 롯데호텔 리워즈 회원 자격이 상실됩니다.<br> 고객님의 회원정보가 삭제되면 보유하고 계신 포인트도 함께 소멸됩니다.<br> 해당 아이디는 즉시 탈퇴가 처리되며 영구적으로 사용이 중지되므로 해당 아이디로 재가입이 불가능합니다.
		</p>
	</div>

	<div id="delete-form-div">
		<div class="jb-division-line delete-page topline"></div>
		<form id="delete-form" action="delete" method="post">

			<div>
				<label id="delete-password-chk-label" for="delete-password-chk">아이디</label> <br> <input class="delete-form-input" type="text" disabled="disabled" value="${principal.memId}">
			</div>
			<div>
				<label id="delete-password-chk-label" for="delete-password-chk">보유 포인트</label> <br> <input class="delete-form-input" type="text" disabled="disabled" value="${principal.memPoint}">
			</div>
			<div>
				<label id="delete-password-chk-label" for="delete-password-chk">비밀번호*</label><br>
				<input id="delete-password-chk" class="delete-form-input" type="password" name="password" placeholder="비밀번호를 입력하세요">
			</div>

			<div class="jb-division-line delete-page"></div>
			<div id="delete-submit-area">
				<button id="delete-cancel" type="button" onclick="history.back()">취소</button>
				<div id="delete-submit-area-space"></div>
				<input id="delete-submit" type="submit" value="탈퇴">
			</div>
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