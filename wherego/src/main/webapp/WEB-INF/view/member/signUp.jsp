<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<<<<<<< HEAD
=======
	<style type="text/css">
		.form-group {
			margin-bottom: 8px;
		}
		
		input[type=file]::file-selector-button {
			display: none;
		}
>>>>>>> 149bcca9edfe83eb6806981477130e3c6316649d

	
	</style>
</head>

<body>
	<div class="container" style="width: 600px;">
		<h2>회원가입</h2>

		<form action="/wherego/member/sign-up" method="post">

			<div class="form-group">
				<label for="mem_id">ID</label>
				<div style="display: flex;">
<<<<<<< HEAD
					<input type="text" class="form-control" id="mem_id" placeholder="Enter id" name="id" style="width: 400px" required="required"> <input type="button" onclick="idchk()" value="중복확인"
						class="btn btn-outline-primary" style="margin-left: 10px">
=======
					<input type="text" class="form-control" id="mem_id" placeholder="Enter id" name="id" style="width: 400px" required="required"> 
					<input type="button" onclick="idchk()" value="중복확인" class="btn btn-outline-primary" style="margin-left: 10px">
>>>>>>> 149bcca9edfe83eb6806981477130e3c6316649d
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
<<<<<<< HEAD

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
					<input type="text" class="form-control" id="mem_addr1" placeholder="Enter address" name="addr1" style="width: 400px;" required="required"> <input type="button" class="btn btn-outline-primary"
						onclick="execDaumPostcode()" value="주소검색" style="margin-left: 10px"></input>
=======
			
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
>>>>>>> 149bcca9edfe83eb6806981477130e3c6316649d
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
<<<<<<< HEAD
	<script>
	<!-- ============================== 비밀번호 일치 확인 ============================== -->
	document.addEventListener("DOMContentLoaded", function() {
		  var pwdInput = document.getElementById("mem_password");
		  var cPassInput = document.getElementById("pwd_check");
		  var resultLabel = document.getElementById("passwordMatchLabel");
		  
		  pwdInput.addEventListener("keyup", function() {
		    checkPasswordMatch();
		  });

		  cPassInput.addEventListener("keyup", function() {
		    checkPasswordMatch();
		  });

		  function checkPasswordMatch() {
		    var password = pwdInput.value;
		    var confirmPassword = cPassInput.value;

		    if (password === confirmPassword) {
		      resultLabel.textContent = "비밀번호가 일치합니다. ";
		      resultLabel.style.color = "green";
		    } else {
		      resultLabel.textContent = "비밀번호가 일치하지 않습니다. ";
		      resultLabel.style.color = "red";
		    }
		  }
		});
	
	<!-- ============================== 아이디 중복 확인 ============================== -->	
		function idchk() {
			var mem_id = $("#mem_id").val();
			var resultLabel = $("#idMatchLabel");
			if(mem_id===""){
			resultLabel.text("아이디를 입력하세요");
	     	resultLabel.css("color", "red");
			return false;				
			}
			$.ajax({
				type : 'POST', // HTTP 요청 방식 설정 (GET 또는 POST)
				url : 'idChk', // 요청을 보낼 URL
				data : {
					mem_id : mem_id
				}, // 전송할 데이터 설정
				success : function(response) {
					console.log(response)
					if (response === 1) {
						resultLabel.text("사용가능한 아이디 입니다.");
						resultLabel.css("color", "green");
					}else{
						resultLabel.text("중복된 아이디가 있습니다.");
						resultLabel.css("color", "red");
					}
				},
				error : function() {
					$('#result').html('에러가 발생했습니다.'); // 에러 시 처리
				}
			});

		}
		
		<!-- ============================== 닉네임 중복 확인 ============================== -->	
		function nickchk() {
			var mem_nickname = $("#mem_nickname").val();
			var resultLabel = $("#nicknameMatchLabel");
			if(mem_nickname===""){
			resultLabel.text("닉네임을 입력하세요");
	     	resultLabel.css("color", "red");
			return false;				
			}
			$.ajax({
				type : 'POST', // HTTP 요청 방식 설정 (GET 또는 POST)
				url : 'nickChk', // 요청을 보낼 URL
				data : {
					mem_nickname : mem_nickname
				}, // 전송할 데이터 설정
				success : function(response) {
					console.log(response)
					if (response === 1) {
						resultLabel.text("사용가능한 닉네임 입니다.");
						resultLabel.css("color", "green");
					}else{
						resultLabel.text("중복된 닉네임이 있습니다.");
						resultLabel.css("color", "red");
					}
				},
				error : function() {
					$('#result').html('에러가 발생했습니다.'); // 에러 시 처리
				}
			});

		}
	</script>

	<!-- --------------------------------주소 찾기  ------------------------------------------------- -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// 우편번호 찾기 찾기 화면을 넣을 element
		var element_wrap = document.getElementById('wrap');
		function foldDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_wrap.style.display = 'none';
		}
		function execDaumPostcode() {
			// 현재 scroll 위치를 저장해놓는다.
			var currentScroll = Math.max(document.body.scrollTop,
					document.documentElement.scrollTop);
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수
							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}
							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("member_extraAddress").value = extraAddr;
							} else {
								document.getElementById("member_extraAddress").value = '';
							}
							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('member_postcode').value = data.zonecode;
							document.getElementById("u_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("member_detailAddress")
									.focus();
							// iframe을 넣은 element를 안보이게 한다.
							// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
							element_wrap.style.display = 'none';
							// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
							document.body.scrollTop = currentScroll;
						},
						// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
						onresize : function(size) {
							element_wrap.style.height = size.height + 'px';
						},
						width : '100%',
						height : '100%'
					}).embed(element_wrap);
			// iframe을 넣은 element를 보이게 한다.
			element_wrap.style.display = 'block';
		}
=======
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
	
	
>>>>>>> 149bcca9edfe83eb6806981477130e3c6316649d
	</script>
</body>
</html>
