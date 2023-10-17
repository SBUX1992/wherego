var IMP = window.IMP;
IMP.init('imp73063051');

function pay() {
	//클릭된 버튼에서 number값
	 var number = event.target.getAttribute('data-number'); 
	// 클릭된 버튼에서 name값
	 var name = event.target.getAttribute('data-name'); 
	// 클릭된 버튼에서 amount값
	 var amount = event.target.getAttribute('data-amount'); 
IMP.request_pay({
    pg : 'kakaopay',
    pay_method : 'card', //생략 가능
    merchant_uid: number, 
    name : name,
    amount : amount,
    buyer_email : 'iamport@siot.do',
    buyer_name : '구매자이름',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456'
}, function(rsp) {
    if ( rsp.success ) {
		console.log(rsp.imp_uid);
		//결제검증
    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
    	jQuery.ajax({
    		url: "/payments/complete"+rep.imp_uid, //cross-domain error가 발생하지 않도록 주의해주세요
    		type: 'POST',
    		dataType: 'json',
    		data: {
	    		imp_uid : rsp.imp_uid
	    		//기타 필요한 데이터가 있으면 추가 전달
    		}
    	})
    	.done(function(res){
			if(res>0){
				swal('주문정보 저장 성공')
				createPayInfo(uid);
			}
			else{
				swal('주문정보 저장 실패')
			}
		});
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        
        alert(msg);
    }
});
}