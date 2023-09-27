<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/css/review/review.css">
</head>
<body>
	<div class="reviewPage">
      <div class="reviewContainer">
        <div class="reviewHeader">
          <h2>후기 작성</h2>
        </div>
        <div class="reviewMain">
          <div class="productContainer">
            <div class="productThumb">
              <img src="./img/lotte_signiel.png" alt="" />
            </div>
            <div class="productTitle">
              <span class="productName">[특가][서울 송파] 롯데 시그니엘</span>
              <span class="productSubName">롯데 시그니엘 숙박권</span>
            </div>
          </div>
          <hr />
          <div class="mainContainer">
            <h3 class="reviewTitle">
              [특가][서울 송파] 롯데 시그니엘 어떠셨나요?
            </h3>

            <div class="ratingContainer">
              <div class="star-rating space-x-4 mx-auto">
                <input type="radio" id="5-stars" name="rating" value="5" />
                <label for="5-stars" class="star pr-4">★</label>
                <input type="radio" id="4-stars" name="rating" value="4" />
                <label for="4-stars" class="star">★</label>
                <input type="radio" id="3-stars" name="rating" value="3" />
                <label for="3-stars" class="star">★</label>
                <input type="radio" id="2-stars" name="rating" value="2" />
                <label for="2-stars" class="star">★</label>
                <input type="radio" id="1-star" name="rating" value="1" />
                <label for="1-star" class="star">★</label>
              </div>
            </div>
          </div>
          <div class="mainContainer">
            <h3 class="reviewTitle">숙박 후기를 입력해 주세요</h3>
            <div>
              <textarea
                class="reviewContentArea"
                maxlength="10000"
                placeholder="후기를 입력해 주세요."
              ></textarea>
            </div>
          </div>
          <div class="mainContainer">
            <h3 class="reviewTitle">사진 업로드<span>(선택)</span></h3>

            <div class="uploadContainer">
              <input type="file" />
            </div>
          </div>
        </div>
      </div>
    </div>	

</body>
</html>