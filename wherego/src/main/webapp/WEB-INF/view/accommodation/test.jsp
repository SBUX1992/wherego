<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<button>ajax 요청</button>
	<c:forEach var="img" items="${imgList }">
		<div>${img}</div>
	</c:forEach>
	<script type="text/javascript">
		$(document).ready(function() {
			$("button").click(function() {
				$.ajax({
					type:"GET",
					url: "http://localhost:8080/wherego/acc/detail/1",
					data: {
						
					},
					success: function(data) {
						$.each(data, function(index, value){
							console.log(value);
						});
					},
					error: function() {
						console.log("오류 발생");	
					}
				});
			});
		});
	</script>
</body>
</html>