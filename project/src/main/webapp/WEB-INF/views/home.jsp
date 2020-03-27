<%@page import="com.bit.project.model.entity.ClientVo"%>
<%@page import="com.mysql.jdbc.interceptors.SessionAssociationInterceptor"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page pageEncoding="utf-8" %>
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
	.jumbotron {
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/background1.jpg?raw=true);
		background-size: cover;
		width: 100%;
		padding:0 0 200px 0;
	}
/* 로그인 */
	#top {
		width:100%;
		background-color:#141414;
		height:100px;
		position:fixed;
	}
	.login>li {
		padding:25px 30px 0 0;
	}
	#side {
		color:white;
	}
	.dropdown>a {
		color:white;
		font-family: 'Jua';
	}
	#comment{
		text-align: center;
		font-family: 'Noto Sans KR';
		color: white;
	}
/* 추천상품 */
	#mainP{
		text-align: center;
		font-family: 'Jua';
		font-size: 48px;
	}
	#mainI {
		width:1800px;
		text-align:center;
		margin:0 auto;
	}
	#main1,#main2,#main3,#main4 {
		display: inline-block;
		width:330px;
		height:330px;
		background-repeat:no-repeat;
		border-radius:100%;
 		background-size:330px;
 		margin:40px;
 	}
	#main1>a, #main2>a, #main3>a, #main4>a {
		color:white;
		font-family: 'Jua';
		font-size:50px;
		text-decoration: none;
		line-height:340px;
		padding:60px;
	}
	#main1 {	
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/mainbarcelona.jpg?raw=true);		
	}
	#main2 {
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/maindanang.jpg?raw=true);		
	}
	#main3 {
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/mainnewyork.jpg?raw=true);		
	}
	#main4 {
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/mainsydney.jpg?raw=true);
	}
	
/* 검색 */
	#MainSea {
		width:1000px;
		margin:0 auto;
		font-family:'Jua';
		text-align:center;
		align:center;
	}
	#keyword {
		width:500px;
		height:50px;
		font-size:18px;
		display:inline-block;
	}
	#searchGo {
		width:60px;
		height:50px;
	}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/menubar.jsp"/>
<div class="jumbotron">
	<p id="comment"><br/><br/><br/><br/><br/>떠나요<br/><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/logoC.png?raw=true" width="300px"></p>
	<div id="MainSea">
		<input type="text" class="form-control" id="keyword" name="keyword" placeholder="도시명 검색 (DB 확인후 기능 예정)">
		<a class="btn btn-default" href="#" role="button" id="searchGo">G O</a>
	</div>
</div>   <!-- 점보트론 -->



	<!-- 추천상품img -->
	<div id="mainI">
		<p id="mainP">추천상품</p>
		<div id="main1"><a href="#">바르셀로나</a></div>
		<div id="main2"><a href="#">다 &nbsp; &nbsp; &nbsp;낭</a></div>
		<div id="main3"><a href="#">뉴&nbsp; &nbsp; &nbsp;욕</a></div>
		<div id="main4"><a href="#">시 드 니</a></div>
		<!-- 
	   	<a href="#"><div id="main1"><p id="maintext1">바르셀로나</p></div></a>
	   	<a href="#"><div id="main2"><p id="maintext2">다낭</p></div></a>
	   	<a href="#"><div id="main3"><p id="maintext3"></p></div></a>
	   	<a href="#"><div id="main4"><p id="maintext4">시드니</p></div></a>
	   	 -->
	</div>

<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 검색
		$('#searchGo').on('click',function() {
			var url='${root }board/review';
			url=url+'?searchType='+$('#searchType').val();
			url=url+'&keyword='+$('#keyword').val();
			
			location.href=url;
			console.log(url);
		});
		
		
	});
</script>
</body>
</html>