<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<style> @import'../resources/static/css/main.css'</style>
<script type="text/javascript" src="../resources/static/js/main.js"></script>



</head>
<body>
	<div class="main-container">
		<div class="main-content">

			<div class="main_table_area">

				<table class="main_serch_table">
					<tr>
						<td class="td1" onclick="toggleCategory('호텔')">Hotel</td>
						<td class="td1" onclick="toggleCategory('모텔')">모텔</td>
						<td class="td1" onclick="toggleCategory('펜션')">펜션</td>
						<td class="td1" onclick="toggleCategory('리조트')">리조트</td>
					</tr>
				</table>

				<table class="main_serch_table2">
					<tr>
						<td><input type='date' placeholder="날짜를 선택해주세요." id="checkin"
							name="checkin" onchange="dateChk()"></td>
						<td><input type='date' placeholder="날짜를 선택해주세요."
							id="checkout" name="checkout" onchange="dateChk()"></td>
						<td><select id="select_ro_count"
							class="form-select form-select-lg" onchange="change_ro_count()"
							style="border: none;">
								<option value="1">1</option>
								<option value="2" selected>2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select></td>
						<td><input type="search" class="main_search_text"
							placeholder="지역,숙소명" name="bu_address" required></td>
						<td>
							<button type="submit" style="border-left: 1px solid;"
								class="btn_main_search_button">WHEREGO</button>
						</td>
					</tr>
				</table>



			</div>
		</div>
	</div>
	<h2>⚡️ 원하는 숙소를 클릭해보세요!</h2>
	<div class="select_section">
		<li class="hotel"><span>호텔</span></li>
		<li class="motel"><span>모텔</span></li>
		<li class="pension"><span>펜션</span></li>
		<li class="resort"><span>리조트</span></li>

	</div>
</body>
</html>