<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>상품 리뷰</title>

<!-- css -->
<link rel="stylesheet" href="../css/review/review.css" />
<!-- js -->
<link rel="stylesheet" href="../js/review/review.js" />

<!-- bootstrap 4.6v -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
</head>
<body>
	<main class="">
		<div class="reviewPage">
			<div class="reviewContainer">
				<div class="reviewHeader">
					<h2>후기 작성</h2>
				</div>
				<div class="reviewMain">
					<div class="productContainer">
						<div class="productThumb">
							<img src="../img/review/lotte_signiel.png" alt="" />
						</div>
						<div class="productTitle">
							<span class="productName">[특가][서울 송파] 롯데 시그니엘</span> <span
								class="productSubName">롯데 시그니엘 숙박권</span>
						</div>
					</div>
					<hr />
					<div class="mainContainer">
						<h3 class="reviewTitle">[특가][서울 송파] 롯데 시그니엘 어떠셨나요?</h3>

						<div class="ratingContainer">
							<div class="star-rating space-x-4 mx-auto">
								<input type="radio" id="5-stars" name="rating" value="5" /> <label
									for="5-stars" class="star pr-4">★</label> <input type="radio"
									id="4-stars" name="rating" value="4" /> <label for="4-stars"
									class="star">★</label> <input type="radio" id="3-stars"
									name="rating" value="3" /> <label for="3-stars" class="star">★</label>
								<input type="radio" id="2-stars" name="rating" value="2" /> <label
									for="2-stars" class="star">★</label> <input type="radio"
									id="1-star" name="rating" value="1" /> <label for="1-star"
									class="star">★</label>
							</div>
						</div>
					</div>
					<div class="mainContainer">
						<h3 class="reviewTitle">숙박 후기를 입력해 주세요</h3>
						<div>
							<textarea class="reviewContentArea" maxlength="10000"
								placeholder="후기를 입력해 주세요."></textarea>
						</div>
					</div>
					<div class="mainContainer">
						<h3 class="reviewTitle">
							사진 업로드<span>(선택)</span>
						</h3>

						<div class="uploadContainer">
							<input type="file" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>