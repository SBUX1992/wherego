<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css" type="text/css">
<title>WhereGo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/view/header2.jsp"%>
	</header>
	<div class="inner">
		<div class="location">
			<a href="#">홈</a> <span>/</span> <span>마이페이지</span>
		</div>
	</div>

	<div id="mypage">
		<div class="headline">
			<h1>나의 멤버십 정보</h1>
		</div>
		<div class="mypage-space">
			<ul class="mylist">
				<li class="mylist-element"><span>성명</span> <span>${principal.memName}</span></li>
				<li class="mylist-element"><span>닉네임</span> <span>${principal.memNickname}</span></li>
				<li class="mylist-element"><span>이메일</span> <span>${principal.memEmail}</span></li>
				<li class="mylist-element"><span>연락처</span> <span>${principal.memPhone}</span></li>
				<li class="mylist-element"><span>보유 포인트</span> <span>${principal.memPoint}</span></li>
			</ul>
		</div>
		<div>
			<button>회원 정보 수정</button>
			<button>회원 탈퇴</button>
		</div>


		<div>
			<div id="listBodyWrapper">
				<label>숙박 결제 내역</label>
				<div class="listBodyWrapper-data title">
					<div class="listBodyWrapper-data-ele row1">룸</div>
					<div class="listBodyWrapper-data-ele row2">이용기간</div>
					<div class="listBodyWrapper-data-ele row3">결제일</div>
					<div class="listBodyWrapper-data-ele row4">결제상태</div>
					<div class="listBodyWrapper-data-ele row4">청구금액(원)</div>
				</div>
				<%-- 여기서부터 포문 --%>
				
				<div class="listBodyWrapper-data">
					<div class="listBodyWrapper-data-ele room">Junior Suite Family Twin</div>
					<div class="listBodyWrapper-data-ele row2">2202.1.23 ~ 2302.1.23</div>
					<div class="listBodyWrapper-data-ele row3">2023.10.13</div>
					<div class="listBodyWrapper-data-ele row4">완료</div>
					<div class="listBodyWrapper-data-ele row4">200,200,000,000</div>
				</div>
				<div class="listBodyWrapper-data col2"></div>
				<div class="listBodyWrapper-data"></div>
				<div class="listBodyWrapper-data col2"></div>
				<div class="listBodyWrapper-data"></div>
				<div class="listBodyWrapper-data col2"></div>
				<div class="listBodyWrapper-data"></div>
				<div class="listBodyWrapper-data col2"></div>
				<div class="listBodyWrapper-data"></div>
				<div class="listBodyWrapper-data col2"></div>
			</div>
		</div>

		<div id="page_wrap"></div>
		<!-- <div class="page_wrap">
			<div class="page_nation">
				<a class="arrow pprev" href="#"></a> <a class="arrow prev" href="#"></a> <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a>
				<a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a class="arrow next" href="#"></a> <a class="arrow nnext" href="#"></a>
			</div>
		</div> -->
	</div>

	<script type="text/javascript">
		/* function fetchData(page) {
			$.get('https://api.example.com/', function (data) {
				  console.log(data);
				})
		} */
		
		
		
		$(document).ready(function() {
			!function(o, e, t, s) { "use strict"; var i = o.fn.twbsPagination, r = function(t, s) { if (this.$element = o(t), this.options = o.extend({}, o.fn.twbsPagination.defaults, s), this.options.startPage < 1 || this.options.startPage > this.options.totalPages) throw new Error("Start page option is incorrect"); if (this.options.totalPages = parseInt(this.options.totalPages), isNaN(this.options.totalPages)) throw new Error("Total pages option is not correct!"); if (this.options.visiblePages = parseInt(this.options.visiblePages), isNaN(this.options.visiblePages)) throw new Error("Visible pages option is not correct!"); if (this.options.beforePageClick instanceof Function && this.$element.first().on("beforePage", this.options.beforePageClick), this.options.onPageClick instanceof Function && this.$element.first().on("page", this.options.onPageClick), this.options.hideOnlyOnePage && 1 == this.options.totalPages) return this.options.initiateStartPageClick && this.$element.trigger("page", 1), this; if (this.options.href && (this.options.startPage = this.getPageFromQueryString(), this.options.startPage || (this.options.startPage = 1)), "UL" === ("function" == typeof this.$element.prop ? this.$element.prop("tagName") : this.$element.attr("tagName"))) this.$listContainer = this.$element; else { var e = this.$element, i = o([]); e.each(function(t) { var s = o("<ul></ul>"); o(this).append(s), i.push(s[0]) }), this.$listContainer = i, this.$element = i } return this.$listContainer.addClass(this.options.paginationClass), this.options.initiateStartPageClick ? this.show(this.options.startPage) : (this.currentPage = this.options.startPage, this.render(this.getPages(this.options.startPage)), this.setupEvents()), this }; r.prototype = { constructor: r, destroy: function() { return this.$element.empty(), this.$element.removeData("twbs-pagination"), this.$element.off("page"), this }, show: function(t) { if (t < 1 || t > this.options.totalPages) throw new Error("Page is incorrect."); this.currentPage = t, this.$element.trigger("beforePage", t); var s = this.getPages(t); return this.render(s), this.setupEvents(), this.$element.trigger("page", t), s }, enable: function() { this.show(this.currentPage) }, disable: function() { var t = this; this.$listContainer.off("click").on("click", "li", function(t) { t.preventDefault() }), this.$listContainer.children().each(function() { o(this).hasClass(t.options.activeClass) || o(this).addClass(t.options.disabledClass) }) }, buildListItems: function(t) { var s = []; if (this.options.first && s.push(this.buildItem("first", 1)), this.options.prev) { var e = 1 < t.currentPage ? t.currentPage - 1 : this.options.loop ? this.options.totalPages : 1; s.push(this.buildItem("prev", e)) } for (var i = 0; i < t.numeric.length; i++)s.push(this.buildItem("page", t.numeric[i])); if (this.options.next) { var a = t.currentPage < this.options.totalPages ? t.currentPage + 1 : this.options.loop ? 1 : this.options.totalPages; s.push(this.buildItem("next", a)) } return this.options.last && s.push(this.buildItem("last", this.options.totalPages)), s }, buildItem: function(t, s) { var e = o("<li></li>"), i = o("<a></a>"), a = this.options[t] ? this.makeText(this.options[t], s) : s; return e.addClass(this.options[t + "Class"]), e.data("page", s), e.data("page-type", t), e.append(i.attr("href", this.makeHref(s)).addClass(this.options.anchorClass).html(a)), e }, getPages: function(t) { var s = [], e = Math.floor(this.options.visiblePages / 2), i = t - e + 1 - this.options.visiblePages % 2, a = t + e, n = this.options.visiblePages; n > this.options.totalPages && (n = this.options.totalPages), i <= 0 && (i = 1, a = n), a > this.options.totalPages && (i = this.options.totalPages - n + 1, a = this.options.totalPages); for (var o = i; o <= a;)s.push(o), o++; return { currentPage: t, numeric: s } }, render: function(s) { var e = this; this.$listContainer.children().remove(); var t = this.buildListItems(s); o.each(t, function(t, s) { e.$listContainer.append(s) }), this.$listContainer.children().each(function() { var t = o(this); switch (t.data("page-type")) { case "page": t.data("page") === s.currentPage && t.addClass(e.options.activeClass); break; case "first": t.toggleClass(e.options.disabledClass, 1 === s.currentPage); break; case "last": t.toggleClass(e.options.disabledClass, s.currentPage === e.options.totalPages); break; case "prev": t.toggleClass(e.options.disabledClass, !e.options.loop && 1 === s.currentPage); break; case "next": t.toggleClass(e.options.disabledClass, !e.options.loop && s.currentPage === e.options.totalPages) } }) }, setupEvents: function() { var e = this; this.$listContainer.off("click").on("click", "li", function(t) { var s = o(this); if (s.hasClass(e.options.disabledClass) || s.hasClass(e.options.activeClass)) return !1; !e.options.href && t.preventDefault(), e.show(parseInt(s.data("page"))) }) }, changeTotalPages: function(t, s) { return this.options.totalPages = t, this.show(s) }, makeHref: function(t) { return this.options.href ? this.generateQueryString(t) : "#" }, makeText: function(t, s) { return t.replace(this.options.pageVariable, s).replace(this.options.totalPagesVariable, this.options.totalPages) }, getPageFromQueryString: function(t) { var s = this.getSearchString(t), e = new RegExp(this.options.pageVariable + "(=([^&#]*)|&|#|$)").exec(s); return e && e[2] ? (e = decodeURIComponent(e[2]), e = parseInt(e), isNaN(e) ? null : e) : null }, generateQueryString: function(t, s) { var e = this.getSearchString(s), i = new RegExp(this.options.pageVariable + "=*[^&#]*"); return e ? "?" + e.replace(i, this.options.pageVariable + "=" + t) : "" }, getSearchString: function(t) { var s = t || e.location.search; return "" === s ? null : (0 === s.indexOf("?") && (s = s.substr(1)), s) }, getCurrentPage: function() { return this.currentPage }, getTotalPages: function() { return this.options.totalPages } }, o.fn.twbsPagination = function(t) { var s, e = Array.prototype.slice.call(arguments, 1), i = o(this), a = i.data("twbs-pagination"), n = "object" == typeof t ? t : {}; return a || i.data("twbs-pagination", a = new r(this, n)), "string" == typeof t && (s = a[t].apply(a, e)), void 0 === s ? i : s }, o.fn.twbsPagination.defaults = { totalPages: 1, startPage: 1, visiblePages: 5, initiateStartPageClick: !0, hideOnlyOnePage: !1, href: !1, pageVariable: "{{page}}", totalPagesVariable: "{{total_pages}}", page: null, first: "First", prev: "Previous", next: "Next", last: "Last", loop: !1, beforePageClick: null, onPageClick: null, paginationClass: "pagination", nextClass: "page-item next", prevClass: "page-item prev", lastClass: "page-item last", firstClass: "page-item first", pageClass: "page-item", activeClass: "active", disabledClass: "disabled", anchorClass: "page-link" }, o.fn.twbsPagination.Constructor = r, o.fn.twbsPagination.noConflict = function() { return o.fn.twbsPagination = i, this }, o.fn.twbsPagination.version = "1.4.2" }(window.jQuery, window, document);
			
			
		    loadUserDetails();
			
		    function loadUserDetails() {
		        $.get('${pageContext.request.contextPath}/member/getData', function(memberList) {
		            console.log(memberList); // 예: 받은 데이터를 콘솔에 출력
		            $('.listBodyWrapper-data').each((idx,e) => {
		            	
		            })
		            displayData(memberList);
		        });
		    }
		});



		function displayData(memberList) {
			  var $pagination = $('#page_wrap');
			  var currentPage = 1;

			  var defaultOpts = {
			    totalPages: Math.ceil(memberList.length / 10),
			    visiblePages: 10,
			    onPageClick: function (event, page) {
			      displayDetails(memberList, page); // 페이지를 클릭할 때 데이터를 출력하는 함수를 호출합니다.
			    }
			  };

			  // 페이지를 초기화합니다.
			  $pagination.twbsPagination(defaultOpts);

			  // 데이터를 화면에 출력하는 함수
			  function displayDetails(data, page) {
			    $('#listBody').empty();
			    var startIndex = (page - 1) * defaultOpts.visiblePages;
			    var endIndex = Math.min(startIndex + defaultOpts.visiblePages, data.length);

			    for (var i = startIndex; i < endIndex; i++) {
			      // 여기에서 데이터를 가져와서 출력하는 코드를 추가합니다.
			      var member = data[i];
			      // 예: 데이터를 화면에 추가하는 코드
			      $('#listBody').append('<div>' + member.name + '</div>');
			    }
			  }
			}


		
	</script>
</body>
</html>