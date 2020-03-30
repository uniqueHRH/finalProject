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
	#footerM {
		margin:100 0 0 0;
		padding:50px;
		background-color:#e8e8e8;
		font-family:"Jua";
		text-align:center;
	}
	.footerS, .footerM, .footerF {
		font-size:15px;
		width:430px;
		height:200px;
		margin:0 auto;
		display:inline-block;
		padding:0px;
		text-align:center;
	}
	.pas {
		display:inline-block;
		width:280px;
	}
	p{
		margin:0 auto;
		padding:0 0 0 300px;
	}
</style>
</head>
<body>
<div id="footerM">
	<div class="pas"></div>
	<div class="footerS">
		(주) 여행사용설명서<br/><br/>
		대표자: 홍길동<br/><br/>
		사업자등록번호 : 123-45-67890
	</div>
	<div class="footerM">
		통신판매업신고번호 : 강남01-0013호<br/><br/>
		관광사업자 등록번호 : 제2020-000001호<br/><br/>
		영업보증보험 : 22억 1천만원 가입
	</div>
	<div class="footerF">
		1234-5678<br/><br/>
		12345@traveler.com<br/><br/>
		[06134] 서울 강남구 테헤란로5길 11 유빌딩 2층, 3층<br/>
	</div>
		<p>COPYRIGHT ⓒ HANATOUR SERVICE INC. ALL RIGHT RESERVED</p>
</div>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript">
</script>
</body>
</html>