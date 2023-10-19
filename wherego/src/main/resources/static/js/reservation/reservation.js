$(function() {
	let date1; // 첫 번째 날짜 변수
	let date2; // 두 번째 날짜 변수

	$("#fromDate").html(getDateFormat("fromDate", ""));
	$("#toDate").html(getDateFormat("toDate", ""));
	console.log(getDateFormat("fromDate", ""));

	// 날짜
	let today = new Date();
	let tomorrow = addDaysToDate(today, 1);
	let formattedToday = formatDate(today);
	let formattedTomorrow = formatDate(tomorrow);
	$("#fromDate").attr('data-realDate', formattedToday);
	$("#toDate").attr('data-realDate', formattedTomorrow);
	console.log($('#adultCount').text());
	console.log($('#childCount').text());
	datePicker();
	
	$('#searchBtn').hover(
		function() {
			console.log('asdf');
			$(this).stop().animate({
				backgroundColor: 'white',
				color: 'rgb(173, 158, 135)'
			}, 300); // 300ms 동안 서서히 변경
		},
		function() {
			$(this).stop().animate({
				backgroundColor: 'rgb(173, 158, 135)',
				color: 'white'
			}, 300); // 300ms 동안 서서히 변경
		}
	);
	$("#searchBtn").on("click", function() {
		
		// 검색 버튼 클릭 시
		console.log('-----------------');
		console.log($('#roomCount').text());
		console.log($("#fromDate").attr('data-realDate'));
		console.log($("#toDate").attr('data-realDate'));
		let data = {
			'resFromDate': $("#fromDate").attr('data-realDate'),
			'resToDate': $("#toDate").attr('data-realDate'),
			'roomCount': $('#roomCount').text()
		}
		
		$.ajax({
			//TODO 추후수정
			url: '/wherego/asdf/searchResult',
			method: 'post',
			contentType: 'application/json',
			dataType: 'json',
			data: JSON.stringify(data),
			success: (data) => {
				if(data == 1){
					alert('방이 없습니다.');
					return;
				}
				// 새로운 request 객체 
				/*close.log("/acc/list");*/
				window.location.href = "/wherego/acc/searchList";
			}
		});
	});
	
	

	$('#reservationOptionWrapper').on('click', () => {
		console.log('clicked');
		console.log($('#countDetailWrapper').length);
		if ($('#countDetailWrapper').length > 0 && !$('#countDetailWrapper').attr('data-hided')) {
			$('#countDetailWrapper').remove();
		} else if ($('#countDetailWrapper').attr('data-hided')) {
			$('#countDetailWrapper').removeAttr('data-hided');
			$('#countDetailWrapper').css('display', 'flex');
		} else {
			displayReservationOption();
		}
	})

	function datePicker() {
		var dateFormat = "mm/dd/yy",
			from = $("#fromDateInput")
				.datepicker({
					minDate: 1,
					maxDate: "+1M",
					defaultDate: "+1w",
					numberOfMonths: 1,
					monthNames: [
						"1월",
						"2월",
						"3월",
						"4월",
						"5월",
						"6월",
						"7월",
						"8월",
						"9월",
						"10월",
						"11월",
						"12월",
					],
					dayNames: ["일", "월", "화", "수", "목", "금", "토"],
					dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
					dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
				})
				.on("change", function() {
					date1 = getDate(this); // 첫 번째 날짜를 변수에 저장
					$("#fromDate").html(getDateFormat("otherDate", getDate(this)));
					console.log(getDate(this));
					$('#fromDate').attr('data-realDate', formatDate(getDate(this)));
					to.datepicker("option", "minDate", getDate(this));
				}),
			to = $("#toDateInput")
				.datepicker({
					minDate: date1,
					maxDate: "+1M",
					defaultDate: "+1w",
					numberOfMonths: 2,
					monthNames: [
						"1월",
						"2월",
						"3월",
						"4월",
						"5월",
						"6월",
						"7월",
						"8월",
						"9월",
						"10월",
						"11월",
						"12월",
					],
					dayNames: ["일", "월", "화", "수", "목", "금", "토"],
					dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
					dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
				})
				.on("change", function() {
					date2 = getDate(this); // 두 번째 날짜를 변수에 저장
					if (isNaN(Math.round((date2 - date1) / (1000 * 60 * 60 * 24)))) {
						console.log('if문 실행됨');
						alert('체크인 데이트를 먼저 입력해주세요.');
						return;
					}
					$("#toDate").html(getDateFormat("otherDate", getDate(this)));
					$('#toDate').attr('data-realDate', formatDate(getDate(this)));

					$('#nightCount').html(Math.round((date2 - date1) / (1000 * 60 * 60 * 24)) + '박')
					from.datepicker("option", "maxDate", getDate(this));
				});

		function getDate(element) {
			var date;
			try {
				date = $.datepicker.parseDate(dateFormat, element.value);
			} catch (error) {
				date = null;
			}
			return date;
		}
	}
});

//date 포매터
function getDateFormat(ele, date) {
	// 현재 날짜 객체 생성
	var currentDate;
	if (ele == "fromDate") {
		currentDate = new Date();
	} else if (ele == "toDate") {
		currentDate = new Date();
		currentDate.setDate(currentDate.getDate() + 1);
	} else {
		currentDate = date;
	}

	// 월, 일, 요일을 얻어옴
	var monthNames = [
		"1월",
		"2월",
		"3월",
		"4월",
		"5월",
		"6월",
		"7월",
		"8월",
		"9월",
		"10월",
		"11월",
		"12월",
	];
	var dayNames = ["일", "월", "화", "수", "목", "금", "토"];

	var month = monthNames[currentDate.getMonth()];
	var day = currentDate.getDate();
	var dayOfWeek = dayNames[currentDate.getDay()];

	// 날짜 형식을 "월 일 (요일)"로 조합
	var formattedDate = month + " " + day + "일 (" + dayOfWeek + ")";
	console.log(formattedDate);
	return formattedDate;
}

//commonClassJs를 가져오자..
function displayReservationOption() {
	$('#outerWrapper').append('<div id = "countDetailWrapper">');
	//$('#countDetailWrapper').css('display','block');
	$('#countDetailWrapper').css('display', 'flex');
	$('#countDetailWrapper').css('justify-content', 'center');
	$('#countDetailWrapper').css('position', 'absolute');
	$('#countDetailWrapper').css('z-index', '1');
	let optionWrapperRect = $('#reservationOptionWrapper').get(0).getBoundingClientRect();
	console.log(optionWrapperRect)
	let topValue = optionWrapperRect.bottom;
	let widthValue = optionWrapperRect.left;
	console.log(topValue);
	console.log(widthValue);

	//countDetailWrapper
	console.log($('#reservationOptionWrapper').width());
	$('#countDetailWrapper').css('width', '400px');
	$('#countDetailWrapper').css('height', '400px');
	$('#countDetailWrapper').css('top', (topValue + 10) + 'px');
	$('#countDetailWrapper').css('left', widthValue + 'px');
	//$('#countDetailWrapper').css('right','20%');
	$('#countDetailWrapper').css('border-radius', '2%');
	$('#countDetailWrapper').css('opacity', '0.9');
	$('#countDetailWrapper').css('backgroundColor', 'white');
	$('#countDetailWrapper').attr('data-clicked', 'true');
	$('#countDetailWrapper').append($('<div id = "roomAndOptionOuterWrapper">'));

	//roomAndOptionOuter
	$('#roomAndOptionOuterWrapper').css('display', 'block');
	$('#roomAndOptionOuterWrapper').css('width', '90%');
	$('#roomAndOptionOuterWrapper').css('height', '90%');
	$('#roomAndOptionOuterWrapper').css('margin', 'auto');
	$('#roomAndOptionOuterWrapper').css('backgroundColor', 'white');
	$('#roomAndOptionOuterWrapper').append($('<div id = "roomAndOptionInnerWrapper">'));
	$('#roomAndOptionInnerWrapper').css('width', '100%');
	$('#roomAndOptionInnerWrapper').css('height', 'auto');
	console.log($('#roomAndOptionWrapper'));
	makeRoomAndOption('roomAndOptionInnerWrapper', 'roomAndOption1');
	$('#roomAndOptionOuterWrapper').append($('<div id = "addRoomOuterWrapper">'));

	//addRoomOuterWrapper
	$('#addRoomOuterWrapper').css('display', 'flex');
	$('#addRoomOuterWrapper').css('justify-content', 'center');
	$('#addRoomOuterWrapper').css('height', '10%');
	$('#addRoomOuterWrapper').css('width', '100%');

	//addRoomOuterWrapper
	$('#addRoomOuterWrapper').append($('<div id = "addRoomWrapper">'));
	$('#addRoomWrapper').css('display', 'flex');
	$('#addRoomWrapper').css('justify-content', 'center');
	$('#addRoomWrapper').css('backgroundColor', 'white');
	$('#addRoomWrapper').css('width', '50%');
	$('#addRoomWrapper').css('height', '100%');
	$('#addRoomWrapper').css('margin-left', '2%');
	$('#addRoomWrapper').css('margin-top', '2%');

	// 선택완료
	$('#roomAndOptionOuterWrapper').append($('<div id = "selectCompleteWrapper">'));
	$('#selectCompleteWrapper').css('display', 'flex');
	$('#selectCompleteWrapper').css('justify-content', 'center');
	$('#selectCompleteWrapper').css('align-items', 'center');
	$('#selectCompleteWrapper').css('width', '90%');
	$('#selectCompleteWrapper').css('height', '25%');
	$('#selectCompleteWrapper').css('position', 'absolute');
	$('#selectCompleteWrapper').css('bottom', '10%');
	$('#selectCompleteWrapper').css('backgroundColor', 'white');
	let selectCompleteBtn = new Ele($('#selectCompleteWrapper'), 'selectCompleteBtn');
	selectCompleteBtn.appendTag('');
	selectCompleteBtn.tagCss('70%', '70%', 'black', 'inline-block');
	$('#selectCompleteBtn').css('text-align', 'center');
	$('#selectCompleteBtn').css('cursor', 'pointer');
	$('#selectCompleteBtn').css('line-height', '70px');
	$('#selectCompleteBtn').css('border', '1px solid black');
	$('#selectCompleteBtn').css('color', 'white');
	$('#selectCompleteBtn').hover(
		function() {
			console.log('asdf');
			$(this).stop().animate({
				backgroundColor: 'white',
				color: 'black'
			}, 300); // 300ms 동안 서서히 변경
		},
		function() {
			$(this).stop().animate({
				backgroundColor: '#333',
				color: 'white'
			}, 300); // 300ms 동안 서서히 변경
		}
	);
	selectCompleteBtn.makeHtml('선택완료');
	$('#selectCompleteBtn').on('click', () => {
		$('#countDetailWrapper').hide();
		$('#countDetailWrapper').attr('data-hided', 'true');
	});


	//addHtml , addBtn
	$('#addRoomWrapper').append($('<div id = "addHtml">'));
	$('#addRoomWrapper').append($('<div id = "addBtn">'));
	$('#addHtml').html('객실 추가');
	$('#addBtn').html('+');
	$('#addRoomWrapper').css('cursor', 'pointer');
	$('#addRoomWrapper').on('click', () => {
		addRoomOuterWrapperToggle();
		setCount();
	});


	//deleteRoomAndOption
}

function setCount() {
	console.log($('.adultCnt'));
	let adultCnt = 0;
	let childCnt = 0;
	$('.adultCnt').each((idx, e) => {
		adultCnt += parseInt(e.textContent.substr(2, 3));
	})
	$('#adultCount').html(adultCnt);

	$('.childCnt').each((idx, e) => {
		childCnt += parseInt(e.textContent.substr(3, 4));
	})
	$('#childCount').html(childCnt);

	console.log(childCnt);
	console.log(adultCnt);
}

function addRoomOuterWrapperToggle() {
	console.log(roomAndOptionCount());
	switch (roomAndOptionCount()) {
		case 1:
			makeRoomAndOption('roomAndOptionInnerWrapper', 'roomAndOption2');
			$('#roomCount').html(roomAndOptionCount());
			break;
		case 2:
			makeRoomAndOption('roomAndOptionInnerWrapper', 'roomAndOption3');
			$('#roomCount').html(roomAndOptionCount());
			$('#addRoomOuterWrapper').hide();
			alertHtml();
			break;
	}
}

function alertHtml() {
	$('#roomAndOptionInnerWrapper').append($('<div id = "alertHtml">'));
	$('#alertHtml').css('margin-left', '10%');
	$('#alertHtml').html('객실은 최대 3개까지 선택 가능합니다.');
	$('#alertHtml').css('margin-top', '10px');
	$('#alertHtml').css('color', 'black');
}

function deleteRoomAndOption() {
	$('.roomAndOptions')[roomAndOptionCount() - 1].remove();
	$("#addRoomOuterWrapper").css('display', 'flex');
	$('#roomCount').html(roomAndOptionCount());
	$('#alertHtml').remove();
	setCount();
}

function roomAndOptionCount() {
	return $('.roomAndOptions').length;
}

function makeRoomAndOption(parentTagId, childTagId) {
	console.log(childTagId);
	$('#' + parentTagId).append($('<div id = "' + childTagId + '">'));
	$('#' + childTagId).css('display', 'flex');
	$('#' + childTagId).css('width', '100%');
	$('#' + childTagId).css('height', '40px');
	$('#' + childTagId).css('margin-top', '4%');
	$('#' + childTagId).css('backgroundColor', 'white');
	$('#' + childTagId).attr('class', 'roomAndOptions');
	$('#' + childTagId).attr('data-clicked', 'true');
	roomAndOptionInner(childTagId);
}

//roomAndOption1
function roomAndOptionInner(tagId) {
	$('#' + tagId).append($('<div id = "' + tagId + 'Room">'));
	$('#' + tagId + 'Room').css('display', 'flex');
	$('#' + tagId + 'Room').css('align-items', 'center');
	$('#' + tagId + 'Room').css('text-align', 'center');
	$('#' + tagId + 'Room').css('width', '20%');
	$('#' + tagId + 'Room').css('height', '100%');
	if (tagId != 'roomAndOption1') {
		//roomAndOption? 에서 ? 추출
		$('#' + tagId + 'Room').html('객실' + tagId.substr(-1));
	} else {
		$('#' + tagId + 'Room').html('객실1');
	}

	$('#' + tagId).append($('<div id = "' + tagId + 'AdultCnt">'));
	$('#' + tagId + 'AdultCnt').css('display', 'flex');
	$('#' + tagId + 'AdultCnt').css('align-items', 'center');
	$('#' + tagId + 'AdultCnt').css('justify-content', 'center');
	$('#' + tagId + 'AdultCnt').css('width', '35%');
	$('#' + tagId + 'AdultCnt').css('height', '100%');
	$('#' + tagId + 'AdultCnt').css('border', '1px solid black');
	$('#' + tagId + 'AdultCnt').css('border-radius', '10px');
	$('#' + tagId + 'AdultCnt').css('margin-left', '1px');
	makeCntButton(tagId + 'AdultCnt');

	$('#' + tagId).append($('<div id = "' + tagId + 'ChildCnt">'));
	$('#' + tagId + 'ChildCnt').css('display', 'flex');
	$('#' + tagId + 'ChildCnt').css('text-align', 'center');
	$('#' + tagId + 'ChildCnt').css('width', '35%');
	$('#' + tagId + 'ChildCnt').css('height', '100%');
	$('#' + tagId + 'ChildCnt').css('border', '1px solid black');
	$('#' + tagId + 'ChildCnt').css('border-radius', '10px');
	$('#' + tagId + 'ChildCnt').css('margin-left', '1px');
	$('#' + tagId).append($('<div id = "emptyBtn">'));
	$('#emptyBtn').css('width', '10%')
	$('#emptyBtn').css('margin-left', '10px')
	if (tagId != 'roomAndOption1') {
		$('#' + tagId).append($('<div class = "roomAndOptionDelBtn" id = "' + tagId + 'deleteBtn">'));
		$('#' + tagId + 'deleteBtn').css('width', '10%');
		$('#' + tagId + 'deleteBtn').css('height', '100%');
		$('#' + tagId + 'deleteBtn').css('line-height', '37px');
		$('#' + tagId + 'deleteBtn').css('margin-left', '10px');
		$('#' + tagId + 'deleteBtn').html('X');
		$('#' + tagId + 'deleteBtn').css('cursor', 'pointer');
		$('#' + tagId + 'deleteBtn').on('click', () => {
			deleteRoomAndOption();
		})
	}
	makeCntButton(tagId + 'ChildCnt');

}


function makeCntButton(tagId) {
	console.log(tagId);
	// - 버튼
	$('#' + tagId).append($('<div id = "' + tagId + 'MinusButton">'));
	$('#' + tagId + 'MinusButton').css('display', 'inline-block');
	$('#' + tagId + 'MinusButton').css('text-align', 'center');
	$('#' + tagId + 'MinusButton').css('line-height', '37px');
	$('#' + tagId + 'MinusButton').css('border-right', '1px solid black');
	$('#' + tagId + 'MinusButton').css('width', '20%');
	$('#' + tagId + 'MinusButton').css('height', '100%');
	$('#' + tagId + 'MinusButton').css('cursor', 'pointer');
	$('#' + tagId + 'MinusButton').html('-');
	$('#' + tagId + 'MinusButton').on('click', (e) => {
		let text = $('#' + e.target.id).parent().children()[1].textContent;
		console.log(text);
		console.log('--------------------------------');
		if (text == '성인1') { console.log('성인') }
		if (text == '어린이1') { console.log('어린이') }
		if (text != '성인1') { console.log('성인') }
		if (text != '어린이1') { console.log('어린이') }
		console.log('--------------------------------');
		if (text != '성인1' && text != '어린이1') {
			console.log('실행됨');
			if (tagId.substr(-8) == 'ChildCnt') {
				$('#' + e.target.id).parent().children()[1].textContent = '어린이' + (parseInt(text.substr(3, 4)) - 1)
			} else {
				$('#' + e.target.id).parent().children()[1].textContent = '성인' + (parseInt(text.substr(2, 3)) - 1)
			}
			setCount();
		}
	});

	// cnt

	$('#' + tagId).append($('<div id = "' + tagId + 'Cnt">'));
	$('#' + tagId + 'Cnt').css('display', 'inline-block');
	$('#' + tagId + 'Cnt').css('text-align', 'center');
	$('#' + tagId + 'Cnt').css('line-height', '37px');
	$('#' + tagId + 'Cnt').css('width', '60%');
	$('#' + tagId + 'Cnt').css('height', '100%')
	$('#' + tagId + 'Cnt').html('1명');
	if (tagId.substr(-8) == 'ChildCnt') {
		console.log(tagId.substr(-8));
		$('#' + tagId + 'Cnt').attr('class', 'childCnt')
		$('#' + tagId + 'Cnt').html('어린이1');
	} else {
		$('#' + tagId + 'Cnt').attr('class', 'adultCnt')
		$('#' + tagId + 'Cnt').html('성인1');
	}
	console.log(tagId.substr(-8));
	$('#' + tagId).append($('<div id = "' + tagId + 'PlusButton">'));
	$('#' + tagId + 'PlusButton').css('display', 'inline-block');
	$('#' + tagId + 'PlusButton').css('text-align', 'center');
	$('#' + tagId + 'PlusButton').css('border-left', '1px solid black');
	$('#' + tagId + 'PlusButton').css('line-height', '37px');
	$('#' + tagId + 'PlusButton').css('width', '20%');
	$('#' + tagId + 'PlusButton').css('height', '100%');
	$('#' + tagId + 'PlusButton').css('cursor', 'pointer');

	$('#' + tagId + 'PlusButton').on('click', (e) => {
		let text = $('#' + e.target.id).parent().children()[1].textContent;
		console.log(text);
		if (text != "성인5" && text != '어린이5') {
			if (tagId.substr(-8) == 'ChildCnt') {
				$('#' + e.target.id).parent().children()[1].textContent = '어린이' + (parseInt(text.substr(3, 4)) + 1);
			} else {
				$('#' + e.target.id).parent().children()[1].textContent = '성인' + (parseInt(text.substr(2, 3)) + 1);
			}
			setCount();
		}
	});
	$('#' + tagId + 'PlusButton').html('+');
}

function addDaysToDate(date, daysToAdd) {
	var newDate = new Date(date);
	newDate.setDate(newDate.getDate() + daysToAdd);
	return newDate;
}

function formatDate(date) {
	var year = date.getFullYear();
	var month = date.getMonth() + 1; // 월은 0부터 시작하므로 1을 더합니다.
	var day = date.getDate();

	return year + '-' + (month < 10 ? '0' : '') + month + '-' + (day < 10 ? '0' : '') + day;
}