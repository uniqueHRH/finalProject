<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" %>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />
<style type="text/css">
	#table1 {
		font-family: 'Jua';
	}
	p {
		margin:0 auto;
		font-size:18px;
	}
    #infocomm{
    	font-size: 20px;
    }
    #table {
    	width:50%;
    	margin:0px auto;
    	text-align: center;
    }
   #table tr{
   		text-align: center;
   }
   #table tr td{
   		text-align: center;
   		font-size: 15px;
   }
   		
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>

<!-- menubar end -->
                     <!-- contents start -->
 
 <div id="table1">
 	 <div class="page-header" align="center">
    	 <h1>내 정보관리(직원용)</h1>
  	 </div>
  	 
	<p id="infocomm" align="center">내정보를 최신정보로 관리해주세요</p>
	
	<div id="table">
		<table class="table table-hover">
		<tr>
			<td width="30%">사번/이름</td>
			<td width="40%">사번<br/></br>이름</td>
			<td width="50%">${sessionScope.staffcheck.staff_no }<br/></br>${sessionScope.staffcheck.staff_name }</td>
		</tr>
		<tr>
			<td>연락처/이메일</td>
			<td>연락처<br/><br/>이메일</td>
			<td>${sessionScope.staffcheck.staff_phone }<br/><br/>${sessionScope.staffcheck.staff_email }</td>
		</tr>
		<tr>
			<td>입사일</td>
			<td>입사일</td>
			<td>${sessionScope.staffcheck.staff_joindate }</td>
		</tr>
	   </table>
	 </div>  
</div>
      
                         <!-- contents end -->
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
		$('#hamb').hide();
		$('#hide').hide();
		
		$('#tour_sub').hide();
		$('#comm_sub').hide();
		$('#serv_sub').hide();
		$('#system_sub').hide();
		
		$('#maintext1').hide();
		$('#maintext2').hide();
		$('#maintext3').hide();
		$('#maintext4').hide();
		
		$('#hambBtn').mouseenter(function() {
			$('#hamb').show();
			$(this).hide();
		});
		$('#hamb').mouseenter(function() {
			$(this).show();
			$('#hambBtn').hide();
		}).mouseleave(function() {
			$('#hamb').hide();
			$('#hambBtn').show();
		});
      
   });
</script>
</body>
</html>
