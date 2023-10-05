/*
 * commonClass.js 에 class Ele 와 Checker.
 * TODO paging class commonClass.js 에 만들기
 */
/*
tagManager / menuManager 중 이름 택 1
controller 생성하고.
display 함수만 제대로 만들어 주면 됨.
data.forEach() 해서 데이터 배치하는데,
detailHeader 의 addBtn 에 onClick 할 때
addBtn 의 id에 rootTag의 id 를 줘야해. addBtn_i 방식으로 가도 될꺼같아.
 add했을 떄 parentTag로 들고 들어가야되니까.root 자체를 추가하는 건 어차피
  parentTag = 0으로 가면 되겠지 ? rootMenu 하나 임의로 넣어버릴꺼니까.
 근데 일단 그럼 Tags 를 눌렀을 때 + 버튼이 어딘가에 하나 필요하긴 할꺼야.
어차피 스타일만정할껀데 class 에만 집중해도 될꺼야. 스타일 관련은
id 값으로 조작할 게 어차피 없어.

그리고 data를 불러와서 넣어줄 때details body 에 넣어주는 방식일텐데
detail_body_i 방식으로 넣어주면 되겠네.
*/
$(document).ready(function() {
	let arr = ["Tags", "User", "Company", "Notice", "CS"];
	make_body_nav(arr);
});

/*
 ** body_header 을 만든다.
 ** nav 형태로 admin 이 관리할 테이블을 가져온다.
 ** 가져온 table 을 통해 column 을 생성하거나 칼럼명수정, 저장 할 수 있다.
 */
function make_body_nav(list) {
	// body 에 bodyHeader( nav ) 붙이기
	// $('#tagName')
	const body_nav = new Ele($("#body"), "bodyHeader");
	body_nav.appendTag("navbar navbar-expand-sm bg-dark navbar-dark");
	$("#bodyHeader").append($('<div id = "bodyHeaderNav">'));

	// navigation Left
	list.forEach((e) => {
		$("#bodyHeaderNav").append($('<div id = "' + e + '" class = "navEles">'));
		$("#" + e).html(e);
		indicateClicked($("#" + e));
		$("#" + e).on("click", (e) => tagClicked(e.target.id));
	});
}

// nav 메뉴들의 클릭 유무를 표시한다.
function indicateClicked(tag) {
	tag.attr("data-clicked", "false");
}

// 새 창을 열어서 테이블의 칼럼을 추가할 수 있다.
// 여기서 테이블은 nav 의 Tags 에 해당한다.
function newWindow(parentTagId) {
	console.log(parentTagId);
	var newWindow = window.open(
		"admin/popUpPage",
		"_blank",
		"width=200,height=100"
	);

	newWindow.onload = function() {
		var contentDiv = newWindow.document.createElement("div");
		contentDiv.innerHTML =
			'<div id="dataForm" method="post"><input type="text" id="inputField"><button type="button" id="submitButton">Submit</button></div>';
		newWindow.document.body.appendChild(contentDiv);
		contentDiv
			.querySelector("#submitButton")
			.addEventListener("click", function() {
				var inputData = contentDiv.querySelector("#inputField").value;
				$.ajax({
					url: "admin/saveTags",
					method: "post",
					contentType: "application/json",
					data: JSON.stringify({ parentTag: parentTagId, tagName: inputData }),
					success: (data) => {
						console.log(data);
						refresh();
					},
				});
				newWindow.close();
			});
	};
}

/* tag 클릭 시 실행되는 함수.
 같은 메뉴 재클릭, 전체중 클릭된 ele 가 있는지를 체크한다. 
 재클릭시 창이 닫히고 클릭된 ele 가 있는데 다른 요소를 클릭할 경우
 기존 창을 떼고 새로운 창을 열어준다. 새로운 창의 id 는 클릭한 
 ele + DetailOuterWrapper 로 표시했다.
 */
function tagClicked(navTag) {
	let checker = new Checker(navTag, $(".navEles"));

	if (!checker.anyOfClickedBool($(".navEles"))) {
		console.log("실행됨 66");
		attatchDetailOuterWrapper(navTag);
		return;
	}
	if (checker.checkSelfClicked($(".navEles"), navTag)) {
		console.log("실행됨 71");
		detatch($(".DetailOuterWrapper--"));
		console.log(navTag);
		$("#" + navTag).attr("data-clicked", "false");
		return;
	}
	if (
		!checker.checkSelfClicked($(".navEles"), navTag) &&
		checker.anyOfClickedBool($(".navEles"))
	) {
		detatch($(".DetailOuterWrapper--"));
		$(".navEles").each((idx, e) => e.setAttribute("data-clicked", "false"));
		attatchDetailOuterWrapper(navTag);
		return;
	}
}

// tagId + DetailOuterWrapper 창을 생성.
function attatchDetailOuterWrapper(tagId) {
	console.log("122 줄 " + tagId);
	$("#" + tagId).attr("data-clicked", "true");
	let detailOuterWrapper = new Ele($("#body"), tagId + "DetailOuterWrapper");
	detailOuterWrapper.appendTag("DetailOuterWrapper");
	detailOuterWrapper.tagCss("100%", "93%", "whitesmoke", "block");
	loadNavDetails(tagId);
}

// ele 를 제거하는 함수.
// 여기서는 DetailOuterWrapper 을 떼어내는 데에만 쓰인다.
function detatch(list) {
	console.log(list);
	if (list[0].id == "TagsDetailOuterWrapper") $("#rootAddBtn").remove();
	list[0].remove();
}

//------------------ Inner DetailOuterWrapper -------------------

// navEles 중 하나인 Tags를 load 한다.
function loadNavDetails(tagId) {
	switch (tagId) {
		case "Tags":
			loadTagsDetails();
			break;
		case "User":
			loadUserDetails();
			break;
		case "Company":
			loadCompanyDetails();
			break;
		case "Notice":
			loadNoticeDetails();
			break;
		case "CS":
			loadCSDetails();
			break;
	}
}

// TagDetails
function loadTagsDetails() {
	makeRootAddBtn();
	console.log("mainTags 위");
	$.get("admin/findMainTags", function(data) {
		let tagDetailsWrapper = new Ele(
			$("#TagsDetailOuterWrapper"),
			"tagDetailsWrapper"
		);
		tagDetailsWrapper.appendTag("");
		tagDetailsWrapper.tagCss("90%", "100%", "whitesmoke", "block");
		$("#tagDetailsWrapper").css("margin", "auto");
		$("#tagDetailsWrapper").css("overflow", "scroll");
		data.forEach((e) => console.log(e));
		data.forEach((e) => {
			display(e);
		});
	});
}

// detailbody 를 불러온다.
// detailBody의 ele를 더블클릭하면 이름을 바꿀 수 있고,
// detailBody 의 ele 오른쪽의 - 버튼을 누르면 삭제할 수 있다.
function display(tag) {
	console.log(tag.tagId);
	$.get("admin/findSubTags/" + tag.tagId, function(data) {
		let details = new Ele($("#tagDetailsWrapper"), tag.tagName + "Details");
		details.appendTag("detailsBoxes");
		details.tagCss("33%", "400px", "grey", "inline-block");
		$("#" + tag.tagName + "Details").css("overflow", "scroll");
		let detailHeader = new Ele(
			$("#" + tag.tagName + "Details"),
			tag.tagName + "DetailHeader"
		);
		detailHeader.appendTag("detailHeader");
		detailHeader.tagCss("100%", "10%", "white", "flex");
		$("#" + tag.tagName + "DetailHeader").css(
			"justify-content",
			"space-between"
		);
		let detailHeaderName = new Ele(
			$("#" + tag.tagName + "DetailHeader"),
			tag.tagName + "detailHeaderName"
		);
		detailHeaderName.appendTag("detailHeaderName");
		detailHeaderName.tagCss("20%", "100%", "white", "block");
		detailHeaderName.makeHtml(tag.tagName);
		let addButton = new Ele(
			$("#" + tag.tagName + "DetailHeader"),
			tag.tagName + "AddButton"
		);
		addButton.appendTag("addButtons");
		addButton.tagCss("10%", "100%", "white", "inline-block");
		addButton.makeHtml("+");
		$("#" + tag.tagName + "AddButton").on("click", () =>
			addBtnClicked(tag.tagId)
		);
		$("#" + tag.tagName + "AddButton").on("click", (e) =>
			console.log(e.target)
		);

		// header flex, header left : tagName html / header right : buttons div + - column 수정
		data.forEach((e, idx) => {
			console.log(e.tagId);
			console.log(e.tagName);
			let dataWrapper = new Ele(
				$("#" + tag.tagName + "Details"),
				"dataWrapper" + e.tagId
			);
			dataWrapper.appendTag("dataWrapper");
			dataWrapper.tagCss("100%", "10%", "whitesmoke", "flex");
			let dataLeft = new Ele($("#dataWrapper" + e.tagId), "dataLeft" + e.tagId);
			dataLeft.appendTag("");
			dataLeft.tagCss("90%", "100%", "whitesmoke", "inline-block");
			dataLeft.makeHtml(e.tagName);
			let dataRight = new Ele(
				$("#dataWrapper" + e.tagId),
				"dataRight" + e.tagId
			);
			dataRight.appendTag("tagRight");
			dataRight.tagCss("10%", "100%", "whitesmoke", "inline-block");
			dataRight.makeHtml("-");
			$("#dataRight" + e.tagId).on("click", () =>
				tagRightClicked(e.tagId)
			);
			$("#dataLeft" + e.tagId).on("dblclick", () => dblClicked(e));
		});
	});
}

//rootAddBtn 을 만든다. Tags 버튼을 누르면 생기는 버튼.
function makeRootAddBtn() {
	let rootAddBtn = new Ele($("#bodyHeader"), "rootAddBtn");
	rootAddBtn.appendTag("btn btn-primary");
	rootAddBtn.tagCss("12%", "100%", "whitesmoke", "block");
	$('#rootAddBtn').css("text-align","center");
	$('#rootAddBtn').css("font-family","Arial, sans-serif");
	$('#rootAddBtn').css("font-weight","bold");
	rootAddBtn.makeHtml("rootAdd");
	$("#rootAddBtn").on("click", () => newWindow(1));
}

function addBtnClicked(tagId) {
	console.log(tagId);
	newWindow(tagId);
}

function tagRightClicked(tagId) {
	$.get('admin/deleteTag/' + tagId, function(data) {
		console.log("삭제성공");
		refresh();
	})

}

//TODO 고쳐라

function dblClicked(tag) {
	let originalName = $("#dataLeft" + tag.tagId).text();
	$("#dataLeft" + tag.tagId).attr("contenteditable", "true");
	$("#dataLeft" + tag.tagId).focus();
	console.log(tag.parentTag);
	$("#dataLeft" + tag.tagId).on("blur keypress", (e) => {
		if (e.type == "blur" || e.type == "keypress && e.which ==13") {
			let editedName = $("#dataLeft" + tag.tagId).text();
			$("#" + e.target.id).attr("contenteditable", "false");
			console.log(originalName + " : " + editedName);
			if (originalName != editedName) {
				$.ajax({
					url: "admin/editTagName",
					method: "post",
					contentType: "application/json",
					dataType: "json",
					data: JSON.stringify({ 'tagId': tag.tagId, 'editTagName': editedName }),
					success: (data) => {
						console.log(data);
						refresh();
					}
				});
			} else {
				console.log("이름 안바뀜");
				return;
			}
		}
	});
}

// UserDetails


// CompanyDetails
function loadCompanyDetails() {
	$.get("/loadCompanyDetails", function(data) {
		console.log(data);
	});
}

// NoticeDetails
function loadNoticeDetails() {
	$.get("/loadNoticeDetails", function(data) { });
}

// CSDetails
function loadCSDetails() {
	$.get("/loadCSDetails", function(data) { });
}


function refresh() {
	$("#Tags").click();
	$("#Tags").click();
}