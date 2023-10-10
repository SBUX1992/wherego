<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Review Write Page</title>

    <!-- css -->
    <link rel="stylesheet" href="../css/accommodation/acc_list.css" />
    
    <!-- bootstrap 4.6v -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
      crossorigin="anonymous"
    ></script>

  </head>
  <body>
    <div class="header">
        <div class="logo_img">
            <img src="../img/accommodation/lottehotel_logo.png" alt="호텔로고">
        </div>
        <div class="header_content">
            <a href="#">로그인</a>
            <div>&nbsp | &nbsp</div>
            <a href="#">회원가입</a>
        </div>
    </div>
    <div class="search_acc container" >
        <div class="search_acc_div container">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
            </svg>
            <h5>롯데호텔 부산</h5>
        </div>
        
        <div class="search_acc_div container">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar" viewBox="0 0 16 16">
                <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
            </svg>
            <h5>2023-10-09</h5>
            <h5>~</h5>
            <h5>2023-10-09</h5>
        </div>
        <div class="search_acc_div container">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
                <path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z"/>
            </svg>
            <h5>2명</h5>
        </div>
        <br/>
        <div> 
            <button type="button" class="btn_custom">수정</button>
        </div>
    </div>
    
    <!-- <div class="br_div"></div> -->
        
    <div class="acc_list">
        <div class="acc_list_header">
            <div class="container acc_info">
                <h4>롯데호텔 부산</h4>
                <h6>5성급 | 부산광역시 부산진구 가야대로 772 | +82-51-810-1000</h6>
            </div>
        </div>
        <div class="container">
            <div class="acc_price_info">
                <div>*100 points = 1$ 가치 &nbsp &nbsp *평균가/1박 (세금, 봉사료 미포함)</div>
            </div>
            <c:forEach var="acc" items="${accList}">
	            <div class="acc_list_contents">
	                <div class="acc_list_contain">
	                    <div class="acc_image">
	                        <img src="${acc.imgUrl }" class="img-thumbnail" alt="...">
	                    </div>
	                    <div class="acc_list_info">
	                    	<input type="hidden" value="${acc.roomNo }"></input>
	                        <h4>${acc.roomName}</h4>
	                        <h5>| ${acc.roomView} | 객실면적 ${acc.roomSize } ㎡</h5>
	                        <h5>${acc.roomType }</h5>
	                    </div>
	                </div>
	                <div class="acc_list_button">
	                    <button type="button" class="btn price_btn"  data-bs-toggle="modal" data-bs-target="#staticBackdrop">${acc.roomPrice } KRW</button>
	                </div>
	            </div>
            </c:forEach>
        </div>
    </div>
    <!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        ...
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Understood</button>
	      </div>
	    </div>
	  </div>
	</div>
      
    <script type="text/javascript">
        
    </script>

  </body>
</html>
