<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
		<%@include file="../header.jsp"%>
	</header>
	<br>
	<h1 class="center">신청 완료</h1>
		<table>
		<tr>
			<td><b>유저 ID</b>: ${member.mem_id}</p>
	<p class="center"><input type="button" value="개인 페이지 이동" onclick="javascript:window.location='party_page_joined?p_id=${party.p_id}'" class="test_btn1"></p>
	</td>
		</tr>
	
	</table>
	<br>
</body>
</html>