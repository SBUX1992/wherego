<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/accomodation/accomodationMyPage.css">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="./js/adminJs/commonClass.js"></script>
    <script src="./js/accomodation/accomodationMyPage.js"></script>
</head>
<body>
    <div id="companyProfileWrapper">
      <div id="companyProfileImg" onclick="document.getElementById('profileImgInput').click();">
	      <input type="file" id="profileImgInput" name="" accept="image/png, image/jpeg" style="display:none" />
      </div>
      <div id="companyProfileDetails">
        <div class="details--" id="acc_name">aaaaaaa</div>
        <div class="details--" id="acc_name">aaaa</div>
        <div class="details--" id="acc_type">aaaa</div>
        <div class="details--" id="acc_address">aaaaa aaaa aaa aaa</div>
        <div class="details--" id="acc_price">123456</div>
        <div class="details--" id="tagWrapper">
          <div id="acc_option">
            aaa/aaaaaaaaaaaaaaaaa/aaaaaaaaaaaaaaaaaaaaaaaa/aaa/aa
          </div>
        </div>
        <div class="details--" id="acc_grade">S+ 등급</div>
        <div class="details--" id="comment_count">1233333</div>
      </div>
    </div>
    <div class="managers--" id="profileManager1">
      <div class = "managerTitle--">test</div>
      <div class = "managerDetailBtn--">🔽</div>
    </div>
    <div class="expandableDiv--" id="profileDetail1" data-clicked="false"></div>
    <div class="managers--" id="profileManager2">
      <div class = "managerTitle--">test</div>
      <div class = "managerDetailBtn--">🔽</div>
    </div>
    <div class="expandableDiv--" id="profileDetail2" data-clicked="false"></div>
    <div class="managers--" id="profileManager3">
      <div class = "managerTitle--">test</div>
      <div class = "managerDetailBtn--">🔽</div>
    </div>
    <div class="expandableDiv--" id="profileDetail3" data-clicked="false"></div>
  </body>
</body>
</html>