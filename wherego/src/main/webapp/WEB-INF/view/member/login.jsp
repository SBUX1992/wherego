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
		</form>
	</div>
</body>

</html>