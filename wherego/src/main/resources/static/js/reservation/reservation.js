$(function() {
	let date1; // 첫 번째 날짜 변수
	let date2; // 두 번째 날짜 변수
	$("#fromDate").html(getDateFormat("fromDate", ""));
	$("#toDate").html(getDateFormat("toDate", ""));
	datePicker();
	$("#searchBtn").on("click", function() {
		// 검색 버튼 클릭 시
		console.log("첫 번째 날짜:", date1);
		console.log("두 번째 날짜:", date2);
	});
	$('#reservationOptionWrapper').on('click', () => {
		console.log('clicked');
		$('#outerWrapper').append('<div id = "countDetailWrapper">');
		//$('#countDetailWrapper').css('display','block');
		$('#countDetailWrapper').css('position', 'absolute');
		$('#countDetailWrapper').css('width', '27%');
		$('#countDetailWrapper').css('height', '250px');
		let outerWrapperRect = $('#outerWrapper').get(0).getBoundingClientRect();
		let countDetailWrapper = $('#countDetailWrapper');
		let topValue = outerWrapperRect.height*2;
		console.log(topValue);
		countDetailWrapper.css('top', topValue + 'px');
		//$('#countDetailWrapper').css('right','20%');
		$('#countDetailWrapper').css('border-radius', '2%');
		$('#countDetailWrapper').css('opacity', '0.8');
		$('#countDetailWrapper').css('backgroundColor', 'white');
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
					$("#toDate").html(getDateFormat("otherDate", getDate(this)));
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
