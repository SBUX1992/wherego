/**
 * 
 */

//< !-- ============================== 비밀번호 일치 확인 ============================== -->
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
			resultLabel.textContent = "비밀번호가 일치합니다.";
			resultLabel.style.color = "green";
		} else {
			resultLabel.textContent = "비밀번호가 일치하지 않습니다.";
			resultLabel.style.color = "red";
		}
	}
});

// <!-- ============================== 아이디 중복 확인 ============================== -->	
function idchk() {
	var mem_id = $("#mem_id").val();
	var resultLabel = $("#idMatchLabel");
	if (mem_id === "") {
		resultLabel.text("아이디를 입력하세요");
		resultLabel.css("color", "red");
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
				resultLabel.css("color", "green");
			} else {
				resultLabel.text("이미 사용중인 아이디입니다.");
				resultLabel.css("color", "red");
			}
		},
		error: function() {
			$('#result').html('에러가 발생했습니다.'); // 에러 시 처리
		}
	});

}

// <!-- ============================== 닉네임 중복 확인 ============================== -->	
function nickchk() {
	var mem_nickname = $("#mem_nickname").val();
	var resultLabel = $("#nicknameMatchLabel");
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
			} else {
				resultLabel.text("이미 사용중인 닉네임입니다.");
				resultLabel.css("color", "red");
			}
		},
		error: function() {
			$('#result').html('에러가 발생했습니다.'); // 에러 시 처리
		}
	});
}

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
			oncomplete: function(data) {
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
				}
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById("mem_addr1").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("mem_addr2")
					.focus();
				// iframe을 넣은 element를 안보이게 한다.
				// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
				element_wrap.style.display = 'none';
				// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
				document.body.scrollTop = currentScroll;
			},
			// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
			onresize: function(size) {
				element_wrap.style.height = size.height + 'px';
			},
			width: '100%',
			height: '100%'
		}).embed(element_wrap);
	// iframe을 넣은 element를 보이게 한다.
	element_wrap.style.display = 'block';
}