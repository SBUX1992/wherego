<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지불방법 </title>
</head>
<style>
	 .withdraw{
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            border-top-right-radius: 5px;
            border: 1px solid #FFCC80;
            background-color: rgba(0,0,0,0);
            color: #FFCC80;
            padding: 5px;
            text-align: center;
			display :inline-block;
        }
        .withdraw:hover{
            color:white;
            background-color: #FFCC80;
        }		
</style>
<body>
	<header>
			<%@include file="../header.jsp"%>
		</header>
			<table border="1">	
				<tr>
					<td><label><input type="radio" name="a_payment" value="카카오페이">카카오페이
						</label> <label><input type="radio" name="a_payment" value="무통장입금">무통장입금</label></td>
				</tr>
			</table>
			<br>
			<div class="a">
				<button id="pay" class="withdraw">신청하기</button>
			</div>
</body>
</html>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type='text/javascript'>
</script>
