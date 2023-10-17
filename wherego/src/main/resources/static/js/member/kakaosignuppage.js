let isChekedNickName = false;

let formId = document.getElementById('mem_id');
let formNinkname = document.getElementById('mem_nickname');
let formAddr = document.getElementById('mem_addr1');
let formAddr2 = document.getElementById('mem_addr2');
let formEmail = document.getElementById('mem_email');
let formName = document.getElementById('mem_name');
let formPhone = document.getElementById('mem_phone');

const confirmBtn = document.getElementById('confirm-btn');
const inputElements = document.querySelectorAll('.input-text');
const myForm = document.getElementById('myForm');



function formChk() {
	if (
		isChekedNickName == true &&
		formAddr.value != '' &&
		formAddr2.value != '' &&
		formEmail.value != '' &&
		formName.value != '' &&
		formPhone.value != ''
	) {
		confirmBtn.disabled = false;
		confirmBtn.style.backgroundColor = 'black';
	} else {
		confirmBtn.disabled = true;
		confirmBtn.style.backgroundColor = '#DCDCDC';
	}
}

inputElements.forEach(function(inputElement) {
	// 포커스 시 클래스 이름 변경
	inputElement.addEventListener('focus', function() {
		inputElement.classList.add('focus');
	});

	// 포커스 해제 시 클래스 이름 변경
	inputElement.addEventListener('blur', function(e) {
		inputElement.classList.remove('focus');
	});

	inputElement.addEventListener('keyup', function(e) {
		formChk();
	});
});


// 닉네임 검사후 변경할 때
formNinkname.addEventListener('keyup', function() {
	var resultLabel = $('#nicknameMatchSpan');
	if (isChekedNickName == true) {
		resultLabel.text('중복검사를 다시 실행해주세요.');
		resultLabel.css('color', 'red');
		isChekedNickName == false;
	}
});

// <!-- ============================== 닉네임 중복 확인 ============================== -->
function nickchk() {
	var mem_nickname = $('#mem_nickname').val();
	var resultLabel = $('#nicknameMatchSpan');
	if (mem_nickname === '') {
		resultLabel.text('닉네임을 입력하세요');
		resultLabel.css('color', 'red');
		return false;
	}
	$.ajax({
		type: 'POST', // HTTP 요청 방식 설정 (GET 또는 POST)
		url: 'nickChk', // 요청을 보낼 URL
		data: {
			mem_nickname: mem_nickname,
		}, // 전송할 데이터 설정
		success: function(response) {
			console.log(response);
			if (response === 1) {
				resultLabel.text('사용가능한 닉네임 입니다.');
				resultLabel.css('color', '#1b65b3');
				isChekedNickName = true;
				formChk();
			} else {
				resultLabel.text('이미 사용중인 닉네임입니다.');
				resultLabel.css('color', 'red');
				isChekedNickName = false;
				formChk();
			}
		},
		error: function() {
			$('#result').html('에러가 발생했습니다.'); // 에러 시 처리
			isChekedNickName = false;
			formChk();
		},
	});
}

const fixedElement = document.getElementById('confirm-bar');

// 스크롤 이벤트를 감지
window.addEventListener('scroll', function() {
	// 스크롤 위치를 확인
	const scrollY = window.scrollY;
	// 스크롤 위치에 따라 position 변경
	if (scrollY > 110) {
		fixedElement.style.position = 'relative';
	} else {
		fixedElement.style.position = 'fixed';
	}
});

var element_wrap = document.getElementById('wrap');
function foldDaumPostcode() {
	// iframe을 넣은 element를 안보이게 한다.
	element_wrap.style.display = 'none';
}

function execDaumPostcode() {
	// 현재 scroll 위치를 저장해놓는다.
	var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
	new daum.Postcode({
		oncomplete: function(data) {
			// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수
			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') {
				// 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else {
				// 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}
			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraAddr += extraAddr !== '' ? ', ' + data.buildingName : data.buildingName;
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraAddr !== '') {
					extraAddr = ' (' + extraAddr + ')';
				}
				// 조합된 참고항목을 해당 필드에 넣는다.
			}
			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('mem_addr1').value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById('mem_addr2').focus();
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
		height: '100%',
	}).embed(element_wrap);
	// iframe을 넣은 element를 보이게 한다.
	element_wrap.style.display = 'block';
}
