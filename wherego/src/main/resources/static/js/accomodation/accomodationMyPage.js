$(document).ready(function() {
	if (isTextOverflowedHorizontally(document.querySelector("#acc_option"))) {
		// 가로 길이 초과 시 "..."을 추가한 텍스트를 생성
		$("#tagWrapper").append($('<div id = "showDetail">'));
		$("#showDetail").html("상세보기");
		$("#showDetail").css("cursor", "pointer");
		$("#showDetail").on("click", detailClicked);
		$(".managers--").each((idx, e) => {
			console.log(e);
			e.addEventListener("click", () => managersClicked(idx));
		});
		displayProfileDetail3();
		//$("#showDetail").on("click", () => displayProfileDetail3());

	}
});

// managers click 시 실행되는 함수.
// drop down animation 이 실행되며 해당 div로 이동
function managersClicked(num) {
	let profileDetail = $("#profileDetail" + (num + 1));
	if (profileDetail.attr("data-clicked") == "true") {
		profileDetail.attr("data-clicked", "false");
		clickRefresh();
		profileDetail.scrollTop = 0;
	} else {
		profileDetail.attr("data-clicked", "true");
		moveToEle(num);
	}
}

// div로 스크롤을 이동
function moveToEle(num) {
	setTimeout(function() {
		let profileDetailTarget = document.querySelector(
			"#profileManager" + (num + 1)
		);
		console.log(profileDetailTarget);
		let rect = profileDetailTarget.getBoundingClientRect();
		window.scrollTo({
			top: rect.top + window.scrollY,
			behavior: "smooth", // 부드럽게 스크롤 이동
		});
	}, 450); // 0.5초 (500 밀리초) 대기
}

//text 가 div 를 넘어갈 시 알려주는 function
function isTextOverflowedHorizontally(element) {
	return element.scrollWidth > element.clientWidth;
}

function detailClicked() {
	if ($("#profileDetail3").attr("data-clicked") == "true") {
		let profileDetail = $("#profileDetail" + 3);
		profileDetail.scrollTop = 0;
		moveToEle(2);
		return;
	}
	managersClicked(2);
}

// Option 목록을 표시해줄 함수.
// put , delete 실행 시 내역 업데이트를 위해 ajax 에서 다시 이 함수를 로드해야해서
// if 를 통해 예외처리를 해준다.
function displayProfileDetail3() {
	console.log($("#optionWrapper").length);
	if ($("#optionWrapper").length > 1) {
		$("#optionWrapper").remove();
	}
	let optionWrapper = new Ele($("#profileDetail3"), "optionWrapper");
	optionWrapper.appendTag("optionWrapper");
	optionWrapper.tagCss("100%", "40%", "whitesmoke", "flex");

	let optionsIndexes = new Ele($("#optionWrapper"), "optionsIndexes");
	optionsIndexes.appendTag();
	optionsIndexes.tagCss("40%", "100%", "yellow", "inline-block");

	let buttonTags = new Ele($("#optionWrapper"), "buttonTag");
	buttonTags.appendTag();
	buttonTags.tagCss("20%", "50%", "gray", "inline-block");
	$("#buttonTag").css("margin", "auto");
	let addBtn = new Ele($("#buttonTag"), "addBtn");
	addBtn.appendTag();
	addBtn.tagCss("100%", "50%", "white", "block");
	$("#addBtn").css("cursor", "pointer");
	$("#addBtn").on("click", (e) => addBtnClicked());
	let btnsWrapper = new Ele($("#buttonTag"), "btnsWrapper");
	btnsWrapper.appendTag();
	btnsWrapper.tagCss("100%", "50%", "", "flex");
	let saveBtn = new Ele($("#btnsWrapper"), "saveBtn");
	saveBtn.appendTag("");
	saveBtn.tagCss("50%", "100%", "blue", "block");
	let deleteBtn = new Ele($("#btnsWrapper"), "deleteBtn");
	deleteBtn.appendTag("");
	deleteBtn.tagCss("50%", "100%", "red", "block");
	$("#deleteBtn").on("click", deleteBtnClicked);

	let myOption = new Ele($("#optionWrapper"), "myOption");
	myOption.appendTag();
	myOption.tagCss("40%", "100%", "yellow", "inline-block");
	console.log('실행됨');

	getOptions();
}

// ajax 로 바꿔줘야 한다. getOptions 로 
function getOptions() {
	console.log('실행됨');
	clickRefresh();
	$.get('accomodation/findAllOptions', function(data) {
		let arr2 = [];
		data.forEach(e => arr2.push(e.tagName));
		displayProfileDetail3Inner(arr2, "optionsIndexes");
	})

	$.get('accomodation/findAllOptions', function(data) {
		let arr2 = [];
		data.forEach(e => arr2.push(e.tagName));
		displayProfileDetail3Inner(arr2, "myOption");
	})

}

function addBtnClicked() {
	// data-clicked 만 데리고 오른쪽에 표시해주는것
	// -> db에 insert 하고 detail3display 를 재실행
	let arr = $(".datas--")
		.filter((index, element) => $(element).attr("data-clicked") === "true")
		.toArray();
	let checkedArr = checkedList(arr);

	if (checkedArr.length == 0) {
		console.log("배열이 비었습니다");
		$(".datas--").attr("data-clicked", "false");
	} else {
		let newArr = [];
		$.each(checkedArr, function(index, ele) {
			newArr.push($(ele).text());
		});
		console.log(newArr);
		console.log("여기---------------");
		$(".datas--").attr("data-clicked", "false");
		// 높은 확률로 바껴야 할 로직
		// insert 를 실행하고 db 에서 select 를 수행하는 구문.
		getOptions();
	}
}

// 태그를 삭제한다.
function deleteBtnClicked() {
	if ($('.myDatas--[data-clicked="true"]').length > 0) {
		let string = $(".myDatas--")
			.filter((index, element) => $(element).attr("data-clicked") === "true")
			.map((index, element) => $(element).text())
			.get()
			.join("/");
		console.log(string);
		$.ajax({
			url: 'accomodation/deleteCompanyOption',
			method: 'post',
			contentType: 'application/json',
			dataType: 'json',
			data: JSON.stringify(string),
			success: (data) => {
				getOptions();
			}
		});
	} else {
		console.log('배열빔ㅁㅁㅁㅁㅁㅁ')
	}
}

function displayProfileDetail3Inner(datas, tagId) {
	datas.forEach((e) => {
		$("#optionsIndexes" + e).attr("data-clicked", "false");
	});
	$('#' + tagId).children().remove();
	console.log('178178178178178178178178178178178178178')
	datas.forEach((e, idx) => {
		let data = new Ele($("#" + tagId), tagId + e);
		if (tagId == "myOption") {
			data.appendTag("myDatas");
		} else {
			data.appendTag("datas");
		}
		data.tagCss("", "", "white", "inline-block");
		data.makeHtml(e);
		data.indicateClicked();
		$("#" + tagId + e).css("margin", "2%");
		$("#" + tagId + e).css("cursor", "pointer");
		$("#" + tagId + e)
			.off()
			.on("click", (e) => dataClicked($("#" + e.target.id)));
	});
}

//data 클릭시
function dataClicked(tag) {
	console.log(tag.attr("data-clicked"));
	if (tag.attr("data-clicked") == "false") {
		console.log("실행됨");
		tag.attr("data-clicked", "true");
	} else {
		console.log("실행됨");
		tag.attr("data-clicked", "false");
	}
}

// datas-- 의 dataClicked 가 true 인 아이들을 arr로 받고 있다.
// checkedList 는 addBtn 클릭시 중복검사를 실행해준다.
function checkedList(arr) {
	let newArr = [];
	if ($("#myOption").children().length == 0) {
		arr.forEach((e) => newArr.push(e));
	} else {
		arr.forEach((e) => {
			console.log(eleChecker($("#myOption").children(), e));
			if (eleChecker($("#myOption").children(), e)) {
				newArr.push(e);
			}
		});
	}
	return newArr;
}

function eleChecker(arr, eleText) {
	let bool = true;
	$.each(arr, function(idx, e) {
		if ($(e).text() == $(eleText).text()) {
			bool = false;
		}
	});
	return bool;
}

// myDatas-- 와 datas-- 의 data-clicked 를 false로
function clickRefresh() {
	$('.myDatas--').attr('data-clicked', 'false');
	$('.datas--').attr('data-clicked', 'false');
}


