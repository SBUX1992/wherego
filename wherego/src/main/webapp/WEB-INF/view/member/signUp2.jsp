<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<title>WhereGo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/
css2?family=Material+Symbols+Outlined:opsz,wght,FILL,
GRAD@20..48,100..700,0..1,-50..200" />
<style>
body {
	margin: 0;
}

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

#confirm-bar {
	position: fixed;
	height: 60px;
	padding: 30px 0;
	bottom: 0px; /* 원하는 위치로 조정 */
	left: 0px; /* 원하는 위치로 조정 */
	right: 0px;
	background-color: #ffffff;
	box-shadow: rgba(0, 0, 0, 0.07) 0px -10px 20px 0px;
}

.confirm-bar_btn {
	position: absolute;
	box-sizing: border-box;
	height: 60px;
	width: 150px;
	margin: 0;
	border: none;
	color: #FFFFFF;
	font-size: 20px;
	cursor: pointer;
}

.confirm-bar_btn.submit {
	right: 120px;
	background-color: #DCDCDC;
}

.confirm-bar_btn.back {
	right: 285px;
	background-color: #333333;
}

/* 라이트 120 바텀 30 */
</style>
</head>

<header>
	<%@include file="/WEB-INF/view/header2.jsp"%>
</header>
<body>

	<div>
		<div class="headline">
			<h1>회원 정보 입력</h1>
		</div>

		<form id="myForm" action="/wherego/member/sign-up" method="post">
			<div class="form-area">
				<div>
					<span class="txt-color-sig">*필수 입력</span>
					<div class="jb-division-line"></div>
				</div>


				<!-- 아이디 -->
				<div>
					<div class="input-title">
						<label>아이디*</label>
					</div>
					<div class="col-box">
						<input type="text" class="input-text" id="mem_id" name="id" placeholder="사용할 아이디를 입력하세요">
						<button type="button" class="input-btn" onclick="idchk()">중복확인</button>
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
							<input type="password" id="mem_password" class="input-text" name="password" placeholder="비밀번호를 입력하세요">
						</div>
						<div class="input-wrap col2">
							<input type="password" id="pwd_check" class="input-text" placeholder="한번 더 같은 비밀번호를 입력하세요">
						</div>
					</div>
					<span class="validation__text" id="passwordMatchSpan"></span>
				</div>

				<div class="jb-division-line"></div>

				<!-- 닉네임 -->
				<div>
					<div class="input-title">
						<label>닉네임*</label>
					</div>
					<div class="col-box">
						<input type="text" class="input-text" id="mem_nickname" name="nickname" placeholder="사용할 닉네임을 입력하세요">
						<button type="button" class="input-btn" onclick="nickchk()">중복확인</button>
					</div>
					<span id="nicknameMatchSpan" class="validation__text"></span>
				</div>

				<div class="jb-division-line"></div>

				<!-- 이메일 -->
				<div>
					<div class="input-title">
						<label>이메일*</label>
					</div>
					<div class="col-box">
						<input type="text" class="input-text" id="mem_email" name="email" placeholder="사용할 이메일을 입력하세요">
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
						<input type="text" class="input-text" id="mem_name" name="name" placeholder="성명(한글)">
					</div>
				</div>

				<div class="jb-division-line"></div>

				<!-- 연락처 -->
				<div>
					<div class="input-title">
						<label>연락처*</label>
					</div>
					<div class="col-box">
						<input type="text" class="input-text" id="mem_phone" name="phone" placeholder="전화번호를 입력하세요">
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
							<input type="text" class="input-text" name="addr1" id="mem_addr1" placeholder="주소검색 버튼을 클릭하세요">
						</div>
						<button type="button" class="input-btn" onclick="execDaumPostcode()">주소검색</button>
					</div>
					<div id="wrap" style="display: none; border: 1px solid; width: 100%; height: 400px; margin: 5px 0; position: relative">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1" onclick="foldDaumPostcode()"
							alt="접기 버튼">
					</div>
					<div class="input-wrap col1">
						<input type="text" class="input-text" id="mem_addr2" name="addr2" placeholder="나머지 주소를 입력하세요">
					</div>
					<span class="validation__text"></span>
				</div>

			</div>

			<!-- submit -->
			<div id="confirm-bar">
				<button class="confirm-bar_btn back" onclick="history.back()">이전</button>
				<input type="submit" id="confirm-btn" class="confirm-bar_btn submit" value="다음" disabled="disabled">
			</div>
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		let isChekedId = false;
		let isChekedNickName = false;
		let isChekedPassword = false;

		let formId = document.getElementById("mem_id");
		let formNinkname = document.getElementById("mem_nickname");
		let formAddr = document.getElementById("mem_addr1");
		let formAddr2 = document.getElementById("mem_addr2");
		let formEmail = document.getElementById("mem_email");
		let formName = document.getElementById("mem_name");
		let formPhone = document.getElementById("mem_phone");

		const confirmBtn = document.getElementById("confirm-btn");
		// input 요소 선택

		const inputElements = document.querySelectorAll(".input-text");

		const myForm = document.getElementById("myForm");

		function formChk() {
			if (isChekedId == true && isChekedNickName == true
					&& isChekedPassword == true && formAddr.value != ""
					&& formAddr2.value != "" && formEmail.value != ""
					&& formName.value != "" && formPhone.value != "") {
				confirmBtn.disabled = false;
				confirmBtn.style.backgroundColor = 'black';
			} else {
				confirmBtn.disabled = true;
				confirmBtn.style.backgroundColor = '#DCDCDC';
			}
		}

		inputElements.forEach(function(inputElement) {
			// 포커스 시 클래스 이름 변경
			inputElement.addEventListener("focus", function() {
				inputElement.classList.add("focus");
			});

			// 포커스 해제 시 클래스 이름 변경
			inputElement.addEventListener("blur", function(e) {
				inputElement.classList.remove("focus");
			});

			inputElement.addEventListener("keyup", function(e) {
				formChk();
			});
		});

		document.addEventListener("DOMContentLoaded", function() {
			var pwdInput = document.getElementById("mem_password");
			var cPassInput = document.getElementById("pwd_check");
			var resultLabel = document.getElementById("passwordMatchSpan");

			pwdInput.addEventListener("keyup", function() {
				checkPasswordMatch();
				formChk();
			});

			cPassInput.addEventListener("keyup", function() {
				checkPasswordMatch();
				formChk();
			});

			function checkPasswordMatch() {
				var password = pwdInput.value;
				var confirmPassword = cPassInput.value;

				if (confirmPassword == "" || password == "") {
					resultLabel.textContent = "비밀번호를 입력하세요.";
					resultLabel.style.color = "red";
					isChekedPassword = false;

				} else if (password === confirmPassword) {
					resultLabel.textContent = "비밀번호가 일치합니다.";
					resultLabel.style.color = "green";
					isChekedPassword = true;
				} else {
					resultLabel.textContent = "비밀번호가 일치하지 않습니다.";
					resultLabel.style.color = "red";
					isChekedPassword = false;
				}
			}
		});

		function idchk() {
			var mem_id = $("#mem_id").val();
			var resultLabel = $("#idMatchSpan");
			if (mem_id === "") {
				resultLabel.text("아이디를 입력하세요.");
				resultLabel.css("color", "red");
				isChekedId = false;
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
						isChekedId = true;
						formChk();
					} else {
						resultLabel.text("이미 사용중인 아이디 입니다.");
						resultLabel.css("color", "red");
						isChekedId = false;
						formChk();
					}
				},
				error : function() {
					$('#result').html('에러가 발생했습니다.'); // 에러 시 처리
					isChekedId = false;
					formChk();
				}
			});

		}
	
		// ID 검사후 변경할 때
		formId.addEventListener("keyup", function() {
			var resultLabel = $("#idMatchSpan");
			if (isChekedId == true) {
				resultLabel.text("중복검사를 실행해주세요.");
				resultLabel.css("color", "red");
				isChekedId == false;
			}
		});

		// 닉네임 검사후 변경할 때
		formNinkname.addEventListener("keyup", function() {
			var resultLabel = $("#nicknameMatchSpan");
			if (isChekedNickName == true) {
				resultLabel.text("중복검사를 실행해주세요.");
				resultLabel.css("color", "red");
				isChekedNickName == false;
			}
		});

		// <!-- ============================== 닉네임 중복 확인 ============================== -->	
		function nickchk() {
			var mem_nickname = $("#mem_nickname").val();
			var resultLabel = $("#nicknameMatchSpan");
			if (mem_nickname === "") {
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
						isChekedNickName = true;
						formChk();
					} else {
						resultLabel.text("이미 사용중인 닉네임입니다.");
						resultLabel.css("color", "red");
						isChekedNickName = false;
						formChk();
					}
				},
				error : function() {
					$('#result').html('에러가 발생했습니다.'); // 에러 시 처리
					isChekedNickName = false;
					formChk();

				}
			});
		}

		const fixedElement = document.getElementById('confirm-bar');

		// 스크롤 이벤트를 감지
		window.addEventListener('scroll', function() {
			// 스크롤 위치를 확인
			const scrollY = window.scrollY;
			// 스크롤 위치에 따라 position 변경
			if (scrollY > 220) {
				fixedElement.style.position = 'relative';
			} else {
				fixedElement.style.position = 'fixed';
			}
		});
	</script>

</body>

</html>