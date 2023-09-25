// 초기 선택 상태를 저장하기 위한 변수(hover)
let hoverColor = document.getElementById("td1");
//선택한 카테고리의 색상 변경
hoverColor.addEventListener("td1", function(event) {
	event.target.style.color = "#FF9800";
}, false);
//선택한 카테고리의 색상 변경
hoverColor.addEventListener("td1", function(event) {
	event.target.style.color = "#000000";
}, false)


// 초기 선택 상태를 저장하기 위한 변수
var selectedCategory = "";
// 카테고리를 클릭할 때 호출되는 함수
function toggleCategory(category) {
	const tdElements = document.querySelectorAll(".td1");

	tdElements.forEach(td => {
		console.log(td.textContent);
		if (td.textContent == category) {
			// 선택한 카테고리의 색상을 변경
			td.classList.add("selected");
			// 선택한 카테고리를 변수에 저장
			selectedCategory = category;
		} else {
			// 다른 카테고리의 색상을 원래대로 되돌림
			td.classList.remove("selected");
		}
	});
}

// 페이지가 로드될 때 초기 상태를 복원
window.addEventListener("load", function() {
	if (selectedCategory !== "") {
		toggleCategory(selectedCategory);
	}
});