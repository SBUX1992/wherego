<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/admin/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<main>
	<aside>
		<ul id="gnb">
			<li><a href="#"><i class="fa fa-cogs" aria-hidden="true"></i>환경설정</a>
				<ol>
					<li><a href="#">기본환경설정</a></li>
					<li><a href="#">회원관리</a></li>
				</ol></li>
			<li><a href="#"><i class="fa fa-pencil-square-o"
					aria-hidden="true"></i>게시판관리</a>
				<ol>
					<li><a href="/wherego/admin/cs/notice/list">공지사항</a></li>
					<li><a href="/wherego/admin/cs/qna/list">고객문의</a></li>
				</ol></li>
		</ul>
	</aside>
	<section id="admin-index">
		<nav>
			<h3>공지사항 목록</h3>
			<p>
				HOME > 고객센터 > <strong>공지사항</strong>
			</p>
		</nav>
		<div id="admin_cs_list">
			<div class="admin_cs_list_div">
				<c:choose>
					<c:when test="${noticeList != null}">
						<table>
							<tr>
								<th><input type="checkbox" name="all" id="checkAll" /></th>
								<th>번호</th>
								<th>유형</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
								<th>관리</th>
							</tr>
							<c:forEach var="notice" items="${noticeList}">
								<tr class="notice_list">
									<td>
										<input type="checkbox" name="check" />
										<input type="hidden" name="size" />
									</td>
									<td>${notice.no}</td>
									<td>고객 서비스</td>
									<td><a href="/wherego/admin/cs/notice/view/${notice.no}">${notice.title}</a></td>
									<td>${notice.memId}</td>
									<td>${notice.rdate.substring(0, 10)}</td>
									<td>
										<a href="/wherego/admin/cs/notice/modify/${notice.no}">[수정]</a>
										<a href="/wherego/admin/cs/notice/delete/${notice.no}">[삭제]</a>
									</td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
				</c:choose>

				<div class="btn">
					<input type="button" class="btn_selectDelete selectDelete"
						id="delete" value="선택삭제"> <a
						href="/wherego/admin/cs/notice/write"
						class="btn_register register">작성하기</a>
				</div>

				<!-- 상품목록 페이지번호 -->
				<div class="page">
					<a href="#" class="prev">이전</a> <a href="#" class="num on">1</a> <a
						href="#" class="num">2</a> <a href="#" class="num">3</a> <a
						href="#" class="next">다음</a>
				</div>
			</div>
		</div>
	</section>
</main>
<footer>
	<div>
		<p>Lotte Hotel&Resorts</p>
	</div>
</footer>
</div>
<script>
	
	
	// 선택
	$(function(){
		
		// 체크박스 전체 선택, 해제
		$('#checkAll').click(function(){
			let checked = $(this).is(':checked');
	        if(checked){
	            $('input:checkbox[name=check]').prop('checked',true); 
	        }else{
	            $('input:checkbox[name=check]').prop('checked',false); 
	        }
	    });
		
		// 개별체크 선택 및 해제시 전체 체크 활성 및 비활성
		$('input:checkbox[name=check]').click(function(){
			let checked = $('input:checkbox[name=check]:checked').length;
			let totalChecks = $('input:checkbox[name=check]').length;
//  			console.log(checked);
			let size = $('input[name=size]').val();
// 			if (checked == size){
// 				$('#checkAll').prop('checked', true);
// 			}else{
// 				$('#checkAll').prop('checked', false);
// 			}
			
			$('#checkAll').prop('checked', checked === totalChecks);
			
			// 게시글 카운터, 체크 카운터 == 
		});
		
		// 선택삭제
		$('#delete').click(function () {
			if ($('input[name=check]:checked').length == 0) {
				alert('선택된 상품이 없습니다.');
				return false;
		    }
		    let no = [];
		    $('input[name=check]:checked').each(function (e) {
		    	no.push($(this).data("no"));
	    	});
		    if (confirm('선택된 상품을 삭제하시겠습니까?')) {
		    	let jsonData = {
	    			'no': no
    			};
// 		    	console.log(jsonData);
		    	$.ajax({
		    		type: 'post',
		        	url: '/wherego/admin/cs/notice/list',
		        	data: jsonData,
		        	dataType: 'json',
		        	success: function (data) {
		        		if (data.result > 0) {
		        			$('input[name=check]:checked').parents('tr').remove();
		        			alert('삭제 성공');
		        			if ($('input[name=check]').length == 0) {
		        				$('input:checkbox[name=checkAll]').prop('checked', false);
	        				}
	        			}else {
	        				alert('실패');
        				}
	        		}
	        	});
	    	}
	    });
		
	});
</script>

</body>
</html>
