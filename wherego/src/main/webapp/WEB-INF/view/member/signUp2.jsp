<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>

<head>
<title>WhereGo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/
css2?family=Material+Symbols+Outlined:opsz,wght,FILL,
GRAD@20..48,100..700,0..1,-50..200" />
<style>
.form-area {
	margin: 0 auto;
	width: 1120px;
}

.txt-color-sig {
	color: #998465;
}

.headline {
	text-align: center;
}

.jb-division-line {
	border-top: 1px solid #E0E0E0;
	margin: 20px 0px;
}

.form-area {
	padding: 0 24px;
}

input {
	box-sizing: border-box;
	border: solid 1px #999999;
	margin-top: 10px;
	width: 340px;
	height: 50px;
	padding: 10px 20px;
}

.input-text.focus {
	box-sizing: border-box;
	border: solid 2px #1B65B3;
	border-radius: 2px;
	margin-top: 10px;
	width: 340px;
	height: 50px;
	padding: 10px 19px;
}

input:focus {
	outline: none;
}

.validation__text {
	font-size: 12px;
}

.col-box {
	display: flex;
}

.input-btn {
	box-sizing: border-box;
	margin-top: 10px;
	margin-left: 10px;
	height: 50px;
	width: 130px;
	border: solid 1px #666666;
	background-color: #555555;
	color: white;
	font-size: 13px;
	cursor: Pointer;
}

.input-wrap.col2 {
	margin-left: 10px;
}

.input-title {
	margin-top: 10px;
}

.notice-box {
	display: inline-block;
	box-sizing: border-box;
	border: solid 1px #F8DE72;
	width: 690px;
	background-color: #FEF9E5;
	margin-top: 22px;
	padding: 20px;
}

.notice-text {
	color: #ac8a00;
	font-size: 13px;
}

.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24
}
</style>
</head>

<body>
	<div>
		<div class="headline">
			<h1>회원 정보 입력</h1>
		</div>

		<div class="form-area">
			<div>
				<span class="txt-color-sig">*필수 입력</span>
				<div class="jb-division-line"></div>
			</div>

			<form action="#">

				<!-- 아이디 -->
				<div>
					<div class="input-title">
						<label>아이디*</label>
					</div>
					<div class="col-box">
						<input type="text" class="input-text" id="mem_id" placeholder="사용할 아이디를 입력하세요">
						<button class="input-btn" onclick="idchk()">중복확인</button>
					</div>
					<span id="idMatchSpan" class="validation__text"></span>
				</div>

				<div class="jb-division-line"></div>

				<!-- 비밀번호 -->
				<div>
					<div class="input-title">
						<label>비밀번호*</label>
					</div>
					<div class="col-box">
						<div class="input-wrap col1">
							<input type="password" id="mem_password" class="input-text" placeholder="비밀번호를 입력하세요">
						</div>
						<div class="input-wrap col2">
							<input type="password" id="pwd_check" class="input-text" placeholder="한번 더 같은 비밀번호를 입력하세요">
						</div>
					</div>
					<span class="validation__text" id="passwordMatchSpan"></span>
				</div>

				<div class="jb-division-line"></div>

				<!-- 이메일 -->
				<div>
					<div class="input-title">
						<label>이메일*</label>
					</div>
					<div class="col-box">
						<input type="text" class="input-text" placeholder="사용할 이메일을 입력하세요">
					</div>
					<span class="validation__text"></span>
				</div>

				<div class="jb-division-line"></div>

				<!-- 이름 -->
				<div>
					<div class="input-title">
						<label>성명*</label>
					</div>
					<div class="col-box">
						<input type="text" class="input-text" placeholder="성명(한글)">
					</div>
				</div>

				<div class="jb-division-line"></div>

				<!-- 연락처 -->
				<div>
					<div class="input-title">
						<label>연락처*</label>
					</div>
					<div class="col-box">
						<input type="text" class="input-text" placeholder="전화번호를 입력하세요">
					</div>
				</div>

				<div class="notice-box">

					<span class="notice-text"> <span class="material-symbols-outlined" style=""> error </span>핸드폰 번호 입력 시 0부터 입력 바랍니다. (예 : 010-****-****)
					</span>
				</div>

				<div class="jb-division-line"></div>

				<!-- 주소 -->
				<div>
					<div class="input-title">
						<label>주소*</label>
					</div>
					<div class="col-box">
						<div class="input-wrap col1">
							<input type="password" class="input-text" placeholder="주소검색 버튼을 클릭하세요" readonly="readonly">
						</div>
						<button class="input-btn">주소검색</button>
					</div>
					<div class="input-wrap col1">
						<input type="password" class="input-text" placeholder="나머지 주소를 입력하세요">
					</div>
					<span class="validation__text"></span>
				</div>

				<div class="jb-division-line"></div>


			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		// input 요소 선택
		const inputElements = document.querySelectorAll(".input-text");

		inputElements.forEach(function(inputElement) {
			// 포커스 시 클래스 이름 변경
			inputElement.addEventListener("focus", function() {
				inputElement.classList.add("focus");
			});
			// 포커스 해제 시 클래스 이름 변경
			inputElement.addEventListener("blur", function(e) {
				inputElement.classList.remove("focus");
			});
		});

		document.addEventListener("DOMContentLoaded", function() {
			var pwdInput = document.getElementById("mem_password");
			var cPassInput = document.getElementById("pwd_check");
			var resultLabel = document.getElementById("passwordMatchSpan");

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
					resultLabel.textContent = "비밀번호가 일치합니다.";
					resultLabel.style.color = "green";
				} else {
					resultLabel.textContent = "비밀번호가 일치하지 않습니다.";
					resultLabel.style.color = "red";
				}
			}
		});

		function idchk() {
			var mem_id = $("#mem_id").val();
			var resultLabel = $("#idMatchSpan");
			if (mem_id === "") {
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
						resultLabel.css("color", "#1b65b3");
					} else {
						resultLabel.text("이미 사용중인 아이디입니다.");
						resultLabel.css("color", "red");
					}
				},
				error : function() {
					$('#result').html('에러가 발생했습니다.'); // 에러 시 처리
				}
			});

		}
	</script>

</body>

</html>