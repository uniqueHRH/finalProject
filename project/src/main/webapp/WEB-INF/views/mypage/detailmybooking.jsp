<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page pageEncoding="utf-8" import="com.bit.project.model.entity.*, java.util.List"%>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />
<style type="text/css">
	h1, input {
		font-family: 'Jua';
	}
	#table1,#table2 {
		width:1000px;
		margin:0 auto;
		padding:0px;
		text-align:center;
		font-family: 'Jua';
		font-size:18px;
	}
	select, button, a {
		font-family: 'Jua';
	}
	#table1{
		margin-bottom: 80px; 
	}
	#paybtn{
		position: relative;
		width: 230px;
		left: 1150px;
		margin-top: 50px;
	}

</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>

<!-- contents start -->
      <div class="page-header" id="page-header" align="center">
     <h1>예약 및 결제내역</h1>
  	 </div>
  	 
  	 		<h3 style="text-align: center; font-family: 'Jua'; margin-top: 30px;">예약내역</h3>
  	 <table class="table table-hover" id="table1">
  	
  	 <tr>
  	 	<td class="active" style="width: 200px;">상품번호</td>
  	 	<td style="width: 200px;">${bean.tour_no }</td>
  	 	<td class="active" style="width: 200px;">투어명</td>
  	 	<td style="width: 400px;">${bean.tourVo.name }</td>
  	 </tr>
  	 <tr>
  	 	<td class="active">예약자</td>
  	 	<td>${bean.client_name }</td>
  	 	<td class="active">여행자</td>
  	 	<td>${bean.paid_name }</td>
  	 </tr>
  	 <tr>
  	 	<td class="active">연락처</td>
  	 	<td>${bean.paid_phone }</td>
  	 	<td class="active">카카오톡 아이디</td>
  	 	<td>${bean.paid_kakaoid }</td>
  	 </tr>
  	 <tr>
  	 	<td class="active">여행인원</td>
  	 	<td style="color: red">${bean.paid_count }명</td>
  	 	<td class="active">여행일</td>
  	 	<td style="color: red">${bean.tour_date }</td>	
  	 </tr>
  	 </table>
  	 <h3 style="text-align: center; font-family: 'Jua';">결제내역</h3>
  	 <table class="table table-hover" id="table2">	
  	 	<tr>
  	 		<td class="active" style="width: 200px;">총금액</td>
  	 		<td style="width: 200px; color: red"><fmt:formatNumber value="${bean.paid_total}" pattern="#,###"/>원</td>
  	 		<td class="active" style="width: 200px;">결제일</td>
  	 		<td style="width: 400px;">${bean.paid_date }</td>
  	 	</tr>
  	 	<tr>
  	 		<td class="active">결제상태</td>
  	 		<td>${bean.paid_state }</td>
  	 		<td class="active">확정상태</td>
  	 		<td>${bean.paid_confirm }</td>
  	 	</tr>
  	 </table>
 <p style="display: none;">${bean.paid_no }</p>
 <button id ="paybtn" class="btn btn-primary btn-lg">결제하기</button> 	 
  	 
<!-- contents end --> 
 
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">	
//////////////////////////////////////////////////////////////////////////////////////////

$("#paybtn").click(function () {

	var IMP = window.IMP; // 생략가능
	IMP.init('imp52093065'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	
	IMP.request_pay({
		
		pg : 'inicis', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:${bean.tourVo.name }',
	    amount : ${bean.paid_total},
	    buyer_name : '${bean.client_name }',
	    buyer_tel : '${bean.paid_phone }',
	    
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	    
	        jQuery.ajax({
	        url: '../paidconfirm', // 가맹점 서버
	          method: "POST",
	          data: {
	        	  paid_no:${bean.paid_no}
	          }
	      }).done(function (data) {
	        // 가맹점 서버 결제 API 성공시 로직
	      })
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
});
</script>
</body>
</html>