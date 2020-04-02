<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<title>DETAIL</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />
<link rel="stylesheet" type="text/css" href="${root }css/message.css" />
   <title>Testing websockets</title>
   <style type="text/css">
   	
</style>
</head>
<body>
	<form class="form-inline">
		<div id="formTb">
			<div>
				<input type="text" id="receiver" value=" 보낸사람 : " disabled>
				<input type="text" id="client_nick2" name="client_nick1" value="${bean.client_nick1 }" disabled>
				<input type="text" id="receive_date" name="receive_date" value="${bean.receive_date }" disabled>
				<input type="hidden" id="client_nick1" name="client_nick2" value="${sessionScope.check.client_nick1}" >
			</div>
			<div>
				<textarea class="form-control" id="receive_content" name="receive_content" disabled>${bean.receive_content }</textarea>
			</div>
			<p></p>
			<div class="form-group" align="left">
			</div>
			<div class="form-group" id="btn">
		         <button type="button" class="btn btn-default" id="sendMsg">답 &nbsp; &nbsp; 장</button> &nbsp; 
		         <button type="button" class="btn btn-default" id="cancel">취 &nbsp; &nbsp; 소</button>
			</div>
		</div>
	</form>

<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		$('#sendMsg').on('click',function() {
			var data=$('#client_nick2').val();
			window.open('../../partner/?msg='+data,'쪽지보내기','width=470, height=340, left=500, top=50');
			window.close();
		});
		
		$('#cancel').on('click', function() {
			window.close();
		});
	});
</script>
</body>
</html>






















