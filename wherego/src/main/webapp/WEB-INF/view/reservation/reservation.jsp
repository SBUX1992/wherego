<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>jQuery UI Datepicker - Select a Date Range</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<link rel="stylesheet" href="../css/reservation/reservation.css" />
</head>
<body>
	<div id="outerWrapper">
		<div id="innerWrapper">
			<div id="datePickerWrapper">
				<div id="fromDateWrapper">
					<label id="fromDateBtn">
						<div id="fromDateHtml">호텔</div>
						<div id="busan">롯데호텔 부산</div> 
					</label>
				</div>
			</div>
			<div id="datePickerWrapper">
				<div id="fromDateWrapper" class="dateWrapper">
					<input type="text" id="fromDateInput" name="from" readonly /> 
					<label for="fromDateInput" id="fromDateBtn">
						<div id="fromDateHtml">체크인</div>
						<div id="fromDate">날짜선택</div> 
					</label>
				</div>
				<div id="nightCount">1박</div>
				<div id="toDateWrapper" class="dateWrapper">
					<input type="text" id="toDateInput" name="to" readonly /> 
					<label for="toDateInput" id="toDateBtn">
						<div id="toDateHtml">체크아웃</div>
						<div id="toDate">날짜선택</div>
					</label>
				</div>
			</div>
			<div id="reservationOptionWrapper">
				<div id="roomCountWrapper" class="reservationDetails">
					<div id="roomCountTitle" class="reservationDetailHeader">객실수</div>
					<div id="roomCount" class="reservationDetailBody">1</div>
				</div>
				<div id="adultCountWrapper" class="reservationDetails">
					<div id="adultCountTitle" class="reservationDetailHeader">성인</div>
					<div id="adultCount" class="reservationDetailBody">1</div>
				</div>
				<div id="childCountWrapper" class="reservationDetails">
					<div id="childCountTitle" class="reservationDetailHeader">어린이</div>
					<div id="childCount" class="reservationDetailBody">1</div>
				</div>
			</div>
			<div id="searchBtnWrapper">
				<div id="searchBtn">검색</div>
			</div>
		</div>
	</div>
	
	<script src="../js/reservation/commonClass.js"></script>
	<script src="../js/reservation/reservation.js"></script>
</body>
</html>
