$(document).ready(function() {
	let optionWrapper = new Ele($('#body_body'), 'optionWrapper');
	optionWrapper.appendTag('optionWrapper');
	optionWrapper.tagCss('100%', '40%', 'whitesmoke', 'flex');

	let optionsIndexes = new Ele($('#optionWrapper'), 'optionsIndexes');
	optionsIndexes.appendTag();
	optionsIndexes.tagCss('40%', '100%', 'yellow', 'inline-block');

	let buttonTags = new Ele($('#optionWrapper'), 'buttonTag');
	buttonTags.appendTag();
	buttonTags.tagCss('20%', '50%', 'gray', 'inline-block');
	$('#buttonTag').css('margin', 'auto');
	let addBtn = new Ele($('#buttonTag'), 'addBtn');
	addBtn.appendTag();
	addBtn.tagCss('100%', '50%', 'white', 'block');
	$('#addBtn').css('cursor', 'pointer');
	$('#addBtn').on('click', (e) => addBtnClicked());
	let btnsWrapper = new Ele($('#buttonTag'), 'btnsWrapper');
	btnsWrapper.appendTag();
	btnsWrapper.tagCss('100%', '50%', '', 'flex');
	let saveBtn = new Ele($('#btnsWrapper'),'saveBtn');
	saveBtn.appendTag('');
	saveBtn.tagCss('50%','100%','blue','block')
	let deleteBtn = new Ele($('#btnsWrapper'),'deleteBtn');
	deleteBtn.appendTag('');
	deleteBtn.tagCss('50%','100%','red','block')

	let myOption = new Ele($('#optionWrapper'), 'myOption');
	myOption.appendTag();
	myOption.tagCss('40%', '100%', 'yellow', 'inline-block');

	display(getData(), 'optionsIndexes');
});

function getData() {
	let arr = ['1data', '2data', '3data', '4data', '5data', '6data', '7data'];
	return arr;
}



function addBtnClicked() {
	let arr = $('.datas--').filter((index, element) => $(element).attr('data-clicked') === 'true').toArray();
	let checkedArr = checkedList(arr);

	if (checkedArr.length == 0) {
		console.log("배열이 비었습니다");
		$('.datas--').attr('data-clicked','false');
		return;
	} else {
		let newArr = [];
		$.each(checkedArr, function(index, ele) {
			newArr.push($(ele).text());
		});
		console.log(newArr);
		console.log('여기---------------');
		$('.datas--').attr('data-clicked','false');
		display(newArr, 'myOption');
	}
	
}

function deleteBtnClicked() {

}


function display(datas, tagId) {
	console.log(tagId);
	console.log(datas);
	datas.forEach(e => {
		$('#optionsIndexes' + e).attr('data-clicked', 'false');
	});
	datas.forEach((e, idx) => {
		let data = new Ele($('#' + tagId), tagId + e);
		data.appendTag('datas');
		data.tagCss('', '', 'white', 'inline-block');
		data.makeHtml(e);
		data.indicateClicked();
		$('#' + tagId + e ).css('margin', '2%');
		$('#' + tagId + e ).css('cursor', 'pointer');
		$('#' + tagId + e ).on('click', (e) => dataClicked($('#' + e.target.id)));
	});
}

//data 클릭시
function dataClicked(tag) {
	if (tag.attr('data-clicked') == 'false') {
		tag.attr('data-clicked', 'true');
	} else {
		tag.attr('data-clicked', 'false');
	}
}

// dataClicked 가 true 인 아이들을 arr로 받고 있다.
// checkedList 는 addBtn 클릭시 중복검사를 실행해준다.
function checkedList(arr) {
	let newArr = [];
	if ($('#myOption').children().length == 0) {
		arr.forEach(e => newArr.push(e));
	} else {
		arr.forEach(e => {
			console.log(eleChecker($('#myOption').children(), e));
			if (eleChecker($('#myOption').children(), e)) {
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


