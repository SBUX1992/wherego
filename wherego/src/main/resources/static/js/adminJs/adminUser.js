!function(o, e, t, s) { "use strict"; var i = o.fn.twbsPagination, r = function(t, s) { if (this.$element = o(t), this.options = o.extend({}, o.fn.twbsPagination.defaults, s), this.options.startPage < 1 || this.options.startPage > this.options.totalPages) throw new Error("Start page option is incorrect"); if (this.options.totalPages = parseInt(this.options.totalPages), isNaN(this.options.totalPages)) throw new Error("Total pages option is not correct!"); if (this.options.visiblePages = parseInt(this.options.visiblePages), isNaN(this.options.visiblePages)) throw new Error("Visible pages option is not correct!"); if (this.options.beforePageClick instanceof Function && this.$element.first().on("beforePage", this.options.beforePageClick), this.options.onPageClick instanceof Function && this.$element.first().on("page", this.options.onPageClick), this.options.hideOnlyOnePage && 1 == this.options.totalPages) return this.options.initiateStartPageClick && this.$element.trigger("page", 1), this; if (this.options.href && (this.options.startPage = this.getPageFromQueryString(), this.options.startPage || (this.options.startPage = 1)), "UL" === ("function" == typeof this.$element.prop ? this.$element.prop("tagName") : this.$element.attr("tagName"))) this.$listContainer = this.$element; else { var e = this.$element, i = o([]); e.each(function(t) { var s = o("<ul></ul>"); o(this).append(s), i.push(s[0]) }), this.$listContainer = i, this.$element = i } return this.$listContainer.addClass(this.options.paginationClass), this.options.initiateStartPageClick ? this.show(this.options.startPage) : (this.currentPage = this.options.startPage, this.render(this.getPages(this.options.startPage)), this.setupEvents()), this }; r.prototype = { constructor: r, destroy: function() { return this.$element.empty(), this.$element.removeData("twbs-pagination"), this.$element.off("page"), this }, show: function(t) { if (t < 1 || t > this.options.totalPages) throw new Error("Page is incorrect."); this.currentPage = t, this.$element.trigger("beforePage", t); var s = this.getPages(t); return this.render(s), this.setupEvents(), this.$element.trigger("page", t), s }, enable: function() { this.show(this.currentPage) }, disable: function() { var t = this; this.$listContainer.off("click").on("click", "li", function(t) { t.preventDefault() }), this.$listContainer.children().each(function() { o(this).hasClass(t.options.activeClass) || o(this).addClass(t.options.disabledClass) }) }, buildListItems: function(t) { var s = []; if (this.options.first && s.push(this.buildItem("first", 1)), this.options.prev) { var e = 1 < t.currentPage ? t.currentPage - 1 : this.options.loop ? this.options.totalPages : 1; s.push(this.buildItem("prev", e)) } for (var i = 0; i < t.numeric.length; i++)s.push(this.buildItem("page", t.numeric[i])); if (this.options.next) { var a = t.currentPage < this.options.totalPages ? t.currentPage + 1 : this.options.loop ? 1 : this.options.totalPages; s.push(this.buildItem("next", a)) } return this.options.last && s.push(this.buildItem("last", this.options.totalPages)), s }, buildItem: function(t, s) { var e = o("<li></li>"), i = o("<a></a>"), a = this.options[t] ? this.makeText(this.options[t], s) : s; return e.addClass(this.options[t + "Class"]), e.data("page", s), e.data("page-type", t), e.append(i.attr("href", this.makeHref(s)).addClass(this.options.anchorClass).html(a)), e }, getPages: function(t) { var s = [], e = Math.floor(this.options.visiblePages / 2), i = t - e + 1 - this.options.visiblePages % 2, a = t + e, n = this.options.visiblePages; n > this.options.totalPages && (n = this.options.totalPages), i <= 0 && (i = 1, a = n), a > this.options.totalPages && (i = this.options.totalPages - n + 1, a = this.options.totalPages); for (var o = i; o <= a;)s.push(o), o++; return { currentPage: t, numeric: s } }, render: function(s) { var e = this; this.$listContainer.children().remove(); var t = this.buildListItems(s); o.each(t, function(t, s) { e.$listContainer.append(s) }), this.$listContainer.children().each(function() { var t = o(this); switch (t.data("page-type")) { case "page": t.data("page") === s.currentPage && t.addClass(e.options.activeClass); break; case "first": t.toggleClass(e.options.disabledClass, 1 === s.currentPage); break; case "last": t.toggleClass(e.options.disabledClass, s.currentPage === e.options.totalPages); break; case "prev": t.toggleClass(e.options.disabledClass, !e.options.loop && 1 === s.currentPage); break; case "next": t.toggleClass(e.options.disabledClass, !e.options.loop && s.currentPage === e.options.totalPages) } }) }, setupEvents: function() { var e = this; this.$listContainer.off("click").on("click", "li", function(t) { var s = o(this); if (s.hasClass(e.options.disabledClass) || s.hasClass(e.options.activeClass)) return !1; !e.options.href && t.preventDefault(), e.show(parseInt(s.data("page"))) }) }, changeTotalPages: function(t, s) { return this.options.totalPages = t, this.show(s) }, makeHref: function(t) { return this.options.href ? this.generateQueryString(t) : "#" }, makeText: function(t, s) { return t.replace(this.options.pageVariable, s).replace(this.options.totalPagesVariable, this.options.totalPages) }, getPageFromQueryString: function(t) { var s = this.getSearchString(t), e = new RegExp(this.options.pageVariable + "(=([^&#]*)|&|#|$)").exec(s); return e && e[2] ? (e = decodeURIComponent(e[2]), e = parseInt(e), isNaN(e) ? null : e) : null }, generateQueryString: function(t, s) { var e = this.getSearchString(s), i = new RegExp(this.options.pageVariable + "=*[^&#]*"); return e ? "?" + e.replace(i, this.options.pageVariable + "=" + t) : "" }, getSearchString: function(t) { var s = t || e.location.search; return "" === s ? null : (0 === s.indexOf("?") && (s = s.substr(1)), s) }, getCurrentPage: function() { return this.currentPage }, getTotalPages: function() { return this.options.totalPages } }, o.fn.twbsPagination = function(t) { var s, e = Array.prototype.slice.call(arguments, 1), i = o(this), a = i.data("twbs-pagination"), n = "object" == typeof t ? t : {}; return a || i.data("twbs-pagination", a = new r(this, n)), "string" == typeof t && (s = a[t].apply(a, e)), void 0 === s ? i : s }, o.fn.twbsPagination.defaults = { totalPages: 1, startPage: 1, visiblePages: 5, initiateStartPageClick: !0, hideOnlyOnePage: !1, href: !1, pageVariable: "{{page}}", totalPagesVariable: "{{total_pages}}", page: null, first: "First", prev: "Previous", next: "Next", last: "Last", loop: !1, beforePageClick: null, onPageClick: null, paginationClass: "pagination", nextClass: "page-item next", prevClass: "page-item prev", lastClass: "page-item last", firstClass: "page-item first", pageClass: "page-item", activeClass: "active", disabledClass: "disabled", anchorClass: "page-link" }, o.fn.twbsPagination.Constructor = r, o.fn.twbsPagination.noConflict = function() { return o.fn.twbsPagination = i, this }, o.fn.twbsPagination.version = "1.4.2" }(window.jQuery, window, document);
$(document).ready(function() {
});

function loadUserDetails() {
	let detailsWrapper = new Ele($('#UserDetailOuterWrapper'), 'memberDetailsWrapper');
	detailsWrapper.appendTag('');
	detailsWrapper.tagCss('90%', '100%', 'antiquewhite', 'block');
	$('#memberDetailsWrapper').css('margin', 'auto');
	$.get('admin/getMemberList', function(memberList) {
		let memberDetailHeader = new Ele($('#memberDetailsWrapper'), 'memberDetailHeader');
		memberDetailHeader.appendTag('');
		memberDetailHeader.tagCss('100%', '5%', 'grey', 'flex');
		let keys = ['idx', '아이디', '닉네임', '이메일', '레벨', 'prv', '포인트', 'phone', '주소', '주소2', '가입일'];
		keys.forEach((e, idx) => {
			let memeberDetailKeys = new Ele($('#memberDetailHeader'), 'memberDetailKeys' + e);
			memeberDetailKeys.appendTag('keys');
			memeberDetailKeys.tagCss('10%', '100%', 'white', 'block');
			memeberDetailKeys.makeHtml(e);
		})
		displayData(memberList);
	});
}


function displayData(memberList) {
	console.log(memberList);
	$('#memberDetailsWrapper').append($('<div id = "listBody">'));
	$('#memberDetailsWrapper').append($('<div id = "paginationDiv">'));
	var $pagination = $('#paginationDiv');
	var currentPage = 1; // 현재 페이지 변수를 초기화합니다.
	// ajax get을 통해 실제 표시할 자료 수 / 전체 페이지 수 를 높은확률로 math.ceil 해야될듯?
	var defaultOpts = {
		totalPages: Math.ceil(memberList.length / 5), // 전체 페이지 수 (실제 데이터에 따라 조정해야 합니다.)
		visiblePages: 5, // 표시할 페이지 수
		onPageClick: function(event, page) {
			// 페이지를 클릭할 때 호출되는 콜백 함수
			// 여기에서 해당 페이지에 대한 데이터를 가져오거나 표시하는 로직을 추가합니다.

			// 예제로 사용할 데이터를 배열로 정의합니다.
			// 해당 페이지의 데이터를 가져와서 출력합니다.
			displayDetails(memberList, page);
		}
	};

	// 페이지를 초기화합니다.
	$pagination.twbsPagination(defaultOpts);

	// 데이터를 화면에 출력하는 함수
	function displayDetails(data, page) {
		// 이전 페이지에서 생성된 태그를 모두 지웁니다.
		$('#listBody').empty();
		// 현재 페이지에 해당하는 데이터를 가져와서 출력합니다.
		var startIndex = (page - 1) * defaultOpts.visiblePages;
		var endIndex = startIndex + defaultOpts.visiblePages;
		for (var i = startIndex; i < endIndex; i++) {
			if (i < data.length) {
				console.log('if실행됨');
				$('#listBody').append('<div>' + data[i].memName + '</div>');
			}
		}
	}

};
// user 객체에는 memUserNo, memId, memPassword, memNickname, memName, memEmail,
// memPerLevel, memProvider, memPoint, memPhone, memAddr1/2 , Timestamp memRdate 가 있음.



/*$(document).ready(function () {
	var $pagination = $('#pagination-demo');
	var currentPage = 1; // 현재 페이지 변수를 초기화합니다.
	// ajax get을 통해 실제 표시할 자료 수 / 전체 페이지 수 를 높은확률로 math.ceil 해야될듯?
	var defaultOpts = {
		totalPages: 10, // 전체 페이지 수 (실제 데이터에 따라 조정해야 합니다.)
		visiblePages: 3, // 표시할 페이지 수
		onPageClick: function (event, page) {
			// 페이지를 클릭할 때 호출되는 콜백 함수
			// 여기에서 해당 페이지에 대한 데이터를 가져오거나 표시하는 로직을 추가합니다.

			// 예제로 사용할 데이터를 배열로 정의합니다.
			var data = [
				{ tagName: 'Tag 1' },
				{ tagName: 'Tag 2' },
				{ tagName: 'Tag 3' },
				// 이하 데이터 계속 추가
			];

			// 해당 페이지의 데이터를 가져와서 출력합니다.
			displayData(data, page);
		}
	};

	// 페이지를 초기화합니다.
	$pagination.twbsPagination(defaultOpts);

	// 데이터를 화면에 출력하는 함수
	function displayData(data, page) {
		// 이전 페이지에서 생성된 태그를 모두 지웁니다.
		$('#listBody').empty();
		$.get('admin/findMainTags', function (data) {
			// 현재 페이지에 해당하는 데이터를 가져와서 출력합니다.
			var startIndex = (page - 1) * defaultOpts.visiblePages;
			var endIndex = startIndex + defaultOpts.visiblePages;
	
			for (var i = startIndex; i < endIndex; i++) {
				if (i < data.length) {
					$('#listBody').append('<div>' + data[i].tagName + '</div>');
				}
			}
		})
	}
});
*/