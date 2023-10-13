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
		type: 'POST', // HTTP 요청 방식 설정 (GET 또는 POST)
		url: 'idChk', // 요청을 보낼 URL
		data: {
			mem_id: mem_id
		}, // 전송할 데이터 설정
		success: function(response) {
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
		error: function() {
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
		resultLabel.text("중복검사를 다시 실행해주세요.");
		resultLabel.css("color", "red");
		isChekedId == false;
	}
});

// 닉네임 검사후 변경할 때
formNinkname.addEventListener("keyup", function() {
	var resultLabel = $("#nicknameMatchSpan");
	if (isChekedNickName == true) {
		resultLabel.text("중복검사를 다시 실행해주세요.");
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
		type: 'POST', // HTTP 요청 방식 설정 (GET 또는 POST)
		url: 'nickChk', // 요청을 보낼 URL
		data: {
			mem_nickname: mem_nickname
		}, // 전송할 데이터 설정
		success: function(response) {
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
		error: function() {
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