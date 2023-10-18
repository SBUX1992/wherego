<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/WEB-INF/view/header2.jsp"%>
	<br>
	<h1 class="center">신청 완료</h1>
	<table>
		<tr>
			<td><b>유저 ID</b>: ${member.mem_id}</p>
			<p><b>입금 계좌</b>: 부산은행 - 456-12-5499549</p>
			<b>1시간 내에 입금 해주세요.</b>
			<br>
	<p class="center"><input type="button" value="개인 페이지 이동" onclick="javascript:window.location='party_page_joined?p_id=${member.mem_id}'" class="test_btn1"></p>
			</td>
		</tr>
	</table>
	<br>
</body>
</html>