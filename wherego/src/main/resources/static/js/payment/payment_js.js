var IMP = window.IMP;


$('#pay').on('click', function(e) {
	e.preventDefault();
	var a_payment = $("input[type=radio][name=a_payment]:checked").val();
	if ($("input[type=radio][name=a_payment]:checked").is(':checked')) {
		//클릭된 버튼에서 number값
		// var number = event.target.getAttribute('data-number'); 
		// 클릭된 버튼에서 name값
		//	 var name = event.target.getAttribute('data-name'); 
		// 클릭된 버튼에서 amount값
		//	 var amount = event.target.getAttribute('data-amount'); 
		if (a_payment == '카카오페이') {
			//가맹점 식별 코드
			IMP.init('imp73063051');
			IMP.request_pay({
				pg: 'kakaopay',
				pay_method: 'card', //생략 가능
				merchant_uid: '7',
				//number, 
				name: 'test',
				//name,
				amount: '14000',
				// amount,
				buyer_email: 'iamport@siot.do',
				buyer_name: '구매자이름',
				buyer_tel: '010-1234-5678',
				buyer_addr: '서울특별시 강남구 삼성동',
				buyer_postcode: '123-456'
			}, function(rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					var actionForm = $("#pay_form");
					const pay_completed = $("<input type='hidden' value='T' name='pay_completed'>");
					actionForm.append(pay_completed);
					console.log(actionForm);
					actionForm.find("input[name='mem_id']").val($(this).attr("href"));
					actionForm.submit();
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;

				}
				alert(msg);
			});
		} else {
			var actionForm = $("#pay_form");
			const pay_completed = $("<input type='hidden' value='T' name='pay_completed'>");
			actionForm.append(pay_completed);
			console.log(actionForm);
			actionForm.find("input[name='mem_id']").val($(this).attr("href"));
			actionForm.submit();
		}
	} else {
		alert('결제 수단을 선택해주세요.');
	}

});



