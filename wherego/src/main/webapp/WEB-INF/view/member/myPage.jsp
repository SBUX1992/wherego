<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css" type="text/css" />
        <title>WhereGo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    </head>
    <body style="font-family: 'Noto Sans KR', sans-serif">
        <header><%@include file="/WEB-INF/view/header2.jsp"%></header>
        <div class="inner">
            <div class="location"><a href="#">홈</a> <span>/</span> <span>마이페이지</span></div>
        </div>

        <div id="mypage">
            <div class="headline">
                <h1>나의 멤버십 정보</h1>
            </div>
            <div class="mypage-space">
                <ul class="mylist">
                    <li class="mylist-element">
                        <div class="mylist-element-top">성명</div>
                        <div class="mylist-element-bottom">${principal.memName}</div>
                    </li>
                    <li class="ver-line"></li>
                    <li class="mylist-element">
                        <div class="mylist-element-top">닉네임</div>
                        <div class="mylist-element-bottom">${principal.memNickname}</div>
                    </li>
                    <li class="ver-line"></li>
                    <li class="mylist-element">
                        <div class="mylist-element-top">이메일</div>
                        <div class="mylist-element-bottom">${principal.memEmail}</div>
                    </li>
                    <li class="ver-line"></li>
                    <li class="mylist-element">
                        <div class="mylist-element-top">연락처</div>
                        <div class="mylist-element-bottom">${principal.memPhone}</div>
                    </li>
                    <li class="ver-line"></li>
                    <li class="mylist-element">
                        <div class="mylist-element-top">보유 포인트</div>
                        <div class="mylist-element-bottom">${principal.memPoint}</div>
                    </li>
                </ul>

                <div id="mypage-btn-space">
                    <button>회원 정보 수정</button>
                    <button onclick = "location.href = 'delete' ">회원 탈퇴</button>
                </div>
            </div>

            <div>
                <div id="listBodyWrapper">
                    <label>호텔 이용 내역</label>
                    <div class="listBodyWrapper-data title">
                        <div class="listBodyWrapper-data-ele row1">룸</div>
                        <div class="listBodyWrapper-data-ele row2">이용기간</div>
                        <div class="listBodyWrapper-data-ele row3">결제일</div>
                        <div class="listBodyWrapper-data-ele row4">결제상태</div>
                        <div class="listBodyWrapper-data-ele row4">청구금액(원)</div>
                    </div>
                    <div class="listBodyWrapper-data body"></div>
                    <div id="page_wrap" style="width: fit-content; margin: 500px auto 0 auto; text-align: center"></div>
                </div>
            </div>

            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/member/mypage.js"></script>
        </div>
    </body>
</html>
