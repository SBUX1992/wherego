<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<style type="text/css">
		.form-group {
			margin-bottom: 8px;
		}
		
		input[type=file]::file-selector-button {
			display: none;
		}

	
	</style>
</head>

<body>
	<div class="container" style="width: 600px;">
		<h2>회원가입</h2>

		<form action="/wherego/member/sign-up" method="post">

			<div class="form-group">
				<label for="mem_id">ID</label>
				<div style="display: flex;">
					<input type="text" class="form-control" id="mem_id" placeholder="Enter id" name="id" style="width: 400px" required="required"> 
					<input type="button" onclick="idchk()" value="중복확인" class="btn btn-outline-primary" style="margin-left: 10px">
				</div>
				<label for="mem_id" class="form-label" id="idMatchLabel" style="margin: 0"></label>
			</div>

			<div class="form-group">
				<label for="mem_password">비밀번호</label>
				<input type="password" class="form-control" id="mem_password" placeholder="비밀번호" name="password" style="width: 500px; margin-bottom: 8px" required="required"> 
				<input type="password" class="form-control" id="pwd_check" placeholder="비밀번호 재입력" name="password_check" style="width: 500px" required="required">
				<label for="pwd_check" class="form-label" id="passwordMatchLabel" style="margin: 0"></label>
			</div>

			<div class="form-group">
				<label for="mem_nickname">닉네임</label> 
				<div style="display: flex;">
					<input type="text" class="form-control" id="mem_nickname" placeholder="닉네임" name="nickname" style="width: 400px" required="required"> 
					<input type="button" onclick="nickchk()" value="중복확인" class="btn btn-outline-primary" style="margin-left: 10px" >
				</div>
				<label for="mem_nickname" class="form-label" id="nicknameMatchLabel" style="margin: 0"></label>
			</div>
			
			<div class="form-group">
				<label for="mem_nickname">프로필 사진</label> 
				<div style="display: flex;">
					<input type="file" class="form-control" id="mem_profile_pic" name="nickname" style="width: 250px;" accept="image/png, image/jpeg">
					<label class="btn btn-outline-primary" for="mem_profile_pic" style="height:38px; width:80px; margin-left: 10px;">업로드</label> 
					<img style="width: 150px; margin-left: 10px" id="preview-image" src="https://dummyimage.com/500x500/ffffff/000000.png&text=preview+image">
				</div>
			</div>

			<div class="form-group">
				<label for="mem_name">성명</label>
				<input type="text" class="form-control" id="mem_name" placeholder="성명" name="name" style="width: 500px" required="required">
			</div>

			<div class="form-group">
				<label for="mem_email">이메일</label>
				<input type="email" class="form-control" id="mem_email" placeholder="이메일" name="email" style="width: 500px" required="required">
			</div>

			<div class="form-group">
				<label for="mem_phone">전화번호</label>
				<input type="text" class="form-control" id="mem_phone" placeholder="휴대전화 연락처" name="phone" style="width: 500px" required="required">
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
	
	<script type="text/javascript">
	function readImage(input) {
	    // 인풋 태그에 파일이 있는 경우
	    if(input.files && input.files[0]) {
	        // 이미지 파일인지 검사 (생략)
	        // FileReader 인스턴스 생성
	        const reader = new FileReader()
	        // 이미지가 로드가 된 경우
	        reader.onload = e => {
	            const previewImage = document.getElementById("preview-image")
	            previewImage.src = e.target.result
	        }
	        // reader가 이미지 읽도록 하기
	        reader.readAsDataURL(input.files[0])
	    }
	}
	// input file에 change 이벤트 부여
	const inputImage = document.getElementById("mem_profile_pic")
	inputImage.addEventListener("change", e => {
	    readImage(e.target)
	})
	
	
	</script>
</body>
</html>
