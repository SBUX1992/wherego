<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <title>WhereGo</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
        rel="stylesheet"
        href="https://fonts.googleapis.com/
css2?family=Material+Symbols+Outlined:opsz,wght,FILL,
GRAD@20..48,100..700,0..1,-50..200"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css" type="text/css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
</head>

<header><%@include file="/WEB-INF/view/header2.jsp"%></header>
<body style="font-family: 'Noto Sans KR', sans-serif">
    <div class="inner">
        <div class="location">
            <a href="/wherego/main">홈</a> <span>/</span> <span>회원가입</span>
        </div>
    </div>
    <div>
        <div class="headline">
            <h1>회원 정보 입력</h1>
        </div>

        <form id="myForm" action="/wherego/member/sign-up" method="post">
            <div class="form-area">
                <div>
                    <span class="txt-color-sig">*필수 입력</span>
                    <div class="jb-division-line"></div>
                </div>

                <!-- 아이디 -->
                <div>
                    <div class="input-title">
                        <label>아이디*</label>
                    </div>
                    <div class="col-box">
                        <input
                            type="text"
                            class="input-text"
                            id="mem_id"
                            name="id"
                            placeholder="사용할 아이디를 입력하세요"
                        />
                        <button type="button" class="input-btn" onclick="idchk()">중복확인</button>
                    </div>
                    <span id="idMatchSpan" class="validation__text"></span>
                </div>

                <div class="jb-division-line"></div>

                <!-- 비밀번호 -->
                <div>
                    <div class="input-title">
                        <label>비밀번호*</label>
                    </div>
                    <div class="col-box">
                        <div class="input-wrap col1">
                            <input
                                type="password"
                                id="mem_password"
                                class="input-text"
                                name="password"
                                placeholder="비밀번호를 입력하세요"
                            />
                        </div>
                        <div class="input-wrap col2">
                            <input
                                type="password"
                                id="pwd_check"
                                class="input-text"
                                placeholder="한번 더 같은 비밀번호를 입력하세요"
                            />
                        </div>
                    </div>
                    <span class="validation__text" id="passwordMatchSpan"></span>
                </div>

                <div class="jb-division-line"></div>

                <!-- 닉네임 -->
                <div>
                    <div class="input-title">
                        <label>닉네임*</label>
                    </div>
                    <div class="col-box">
                        <input
                            type="text"
                            class="input-text"
                            id="mem_nickname"
                            name="nickname"
                            placeholder="사용할 닉네임을 입력하세요"
                        />
                        <button type="button" class="input-btn" onclick="nickchk()">중복확인</button>
                    </div>
                    <span id="nicknameMatchSpan" class="validation__text"></span>
                </div>

                <div class="jb-division-line"></div>

                <!-- 이메일 -->
                <div>
                    <div class="input-title">
                        <label>이메일*</label>
                    </div>
                    <div class="col-box">
                        <input
                            type="text"
                            class="input-text"
                            id="mem_email"
                            name="email"
                            placeholder="사용할 이메일을 입력하세요"
                        />
                    </div>
                    <span class="validation__text"></span>
                </div>

                <div class="jb-division-line"></div>

                <!-- 이름 -->
                <div>
                    <div class="input-title">
                        <label>성명*</label>
                    </div>
                    <div class="col-box">
                        <input type="text" class="input-text" id="mem_name" name="name" placeholder="성명(한글)" />
                    </div>
                </div>

                <div class="jb-division-line"></div>

                <!-- 연락처 -->
                <div>
                    <div class="input-title">
                        <label>연락처*</label>
                    </div>
                    <div class="col-box">
                        <input
                            type="text"
                            class="input-text"
                            id="mem_phone"
                            name="phone"
                            placeholder="전화번호를 입력하세요"
                        />
                    </div>
                </div>

                <div class="notice-box">
                    <span class="notice-text">
                        <span class="material-symbols-outlined"> error </span>핸드폰 번호 입력 시 0부터 입력 바랍니다.
                        (예 : 010-****-****)
                    </span>
                </div>

                <div class="jb-division-line"></div>

                <!-- 주소 -->
                <div style="margin-bottom:60px">
                    <div class="input-title">
                        <label>주소*</label>
                    </div>
                    <div class="col-box">
                        <div class="input-wrap col1">
                            <input
                                type="text"
                                class="input-text"
                                name="addr1"
                                id="mem_addr1"
                                placeholder="주소검색 버튼을 클릭하세요"
                                readonly="readonly"
                            />
                        </div>
                        <button type="button" class="input-btn" onclick="execDaumPostcode()">주소검색</button>
                    </div>
                    <div
                        id="wrap"
                        style="
                            display: none;
                            border: 1px solid;
                            width: 690px;
                            height: 400px;
                            margin: 5px 0;
                            position: relative;
                        "
                    >
                        <img
                            src="//t1.daumcdn.net/postcode/resource/images/close.png"
                            id="btnFoldWrap"
                            style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
                            onclick="foldDaumPostcode()"
                            alt="접기 버튼"
                        />
                    </div>
                    <div class="input-wrap col1">
                        <input
                            type="text"
                            class="input-text"
                            id="mem_addr2"
                            name="addr2"
                            placeholder="나머지 주소를 입력하세요"
                        />
                    </div>
                    <span class="validation__text"></span>
                </div>
            </div>

            <!-- submit -->
            <div id="confirm-bar">
                <button class="confirm-bar_btn back" onclick="history.back()">이전</button>
                <input type="submit" id="confirm-btn" class="confirm-bar_btn submit" value="다음" disabled="disabled" />
            </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="${pageContext.request.contextPath}/js/member/member.js"></script>
</body>

</html>
