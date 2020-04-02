<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<title>쪽지보내기</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />
<link rel="stylesheet" type="text/css" href="${root }css/message.css" />
<style type="text/css">

</style>
</head>
<body>

	<form class="form-inline">
		<div id="formTb">
			<div>
				<input type="text" id="receiver" value=" 받는사람 : " disabled>
				<input type="text" id="client_nick2" name="client_nick2" value="" disabled>
				<input type="hidden" id="client_nick1" name="client_nick1" value="${sessionScope.check.client_nick1}" >
			</div>
			<div>
				<textarea class="form-control" id="send_content" name="send_content"></textarea>
			</div>
			<p></p>
			<div class="form-group" align="left">
			</div>
			<div class="form-group" id="btn">
		         <button type="button" class="btn btn-default" id="sendMsg">보 내 기</button> &nbsp; 
		         <button type="button" class="btn btn-default" id="cancel">취 &nbsp; &nbsp; 소</button>
			</div>
		</div>
	</form>
<jsp:include page="/WEB-INF/socket.jsp"/>
<jsp:include page="/WEB-INF/footer.jsp"/>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var id='${param.msg}';
		$('#client_nick2').val(id);
		
		$('#sendMsg').on('click',function() {
			var sender=$('#client_nick1').val();
			var receivcer=$('#client_nick2').val();
			var content=$('#send_content').val();
			
			$.ajax({
				url:'../partner',
				type:'POST',
				data:{client_nick1:sender, client_nick2:receivcer, send_content:content},
				success:function() {
					sock.send($('#client_nick1').val());   // 보내는 사람
					sock.send($('#client_nick2').val());   // 받는 사람
					sock.send($('#send_content').val());   // 내용
					
					alert('메세지가 전송되었습니다');
					window.close();
				},
				error:function() {
					alert('다시 시도해주세요');
				}
			});
		});
		
		$('#cancel').on('click', function() {
			window.close();
		});
	});
</script>
</body>
</html>