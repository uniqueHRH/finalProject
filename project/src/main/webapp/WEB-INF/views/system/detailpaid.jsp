<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		margin-bottom: 50px; 
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
  	 	<td class="active" style="width: 200px;">투어번호</td>
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
  	 	<td>${bean.paid_count }</td>
  	 	<td class="active">예약일</td>
  	 	<td>${bean.book_date }</td>	
  	 </tr>
  	 </table>
  	 <h3 style="text-align: center; font-family: 'Jua';">결제내역</h3>
  	 <table class="table table-hover" id="table2">	
  	 	<tr>
  	 		<td class="active" style="width: 200px;">총금액</td>
  	 		<td style="width: 200px;">${bean.paid_total }</td>
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
<!-- contents end --> 
 
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<script type="text/javascript">	
		
</script>
</body>
</html>