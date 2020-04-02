<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<script type="text/javascript">
	//소켓
	var sock=new SockJS("${root}echo");
	sock.onmessage=function(msg) {
		console.log(msg.data);
		alert('도착');
		window.open('../main/partnerMessage','쪽지가 도착하였습니다','width=470, height=340, left=500, top=50');
	}
	
</script>
</body>
</html>