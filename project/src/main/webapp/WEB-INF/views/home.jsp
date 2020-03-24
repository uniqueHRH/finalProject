<%@page import="com.bit.project.model.entity.ClientVo"%>
<%@page import="com.mysql.jdbc.interceptors.SessionAssociationInterceptor"%>
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
	.jumbotron {
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/background1.jpg?raw=true);
		background-size: cover;
		width: 100%;
	}
	p {
		font-family: 'Jua';
	}
	.log {
		color:white;
		font-family: 'Jua';
	}
	
	.dropdown>a {
		color:white;
		font-family: 'Jua';
	}
	.mainimg{
		text-align: center;
		width: 1350px;
		overflow: hidden;
	}
	.mainimg a {
		float: left;
		text-align: center;
		padding: 17px;
	}
	#side {
		color:white;
	}
	#recommend{
		text-align: center;
		font-family: 'Jua';
		font-size: 48px;
		width:1350px;
	}
	#tour_sub,#comm_sub,#serv_sub, #system_sub {
		text-align: center;
		font-size: 16px;
	}
	#comment{
		text-align: center;
		font-family: 'Noto Sans KR';
		font-size: 30px;
		color: white;
	}
	#maintext1,#maintext2,#maintext3,#maintext4 {
		color:black;
		padding: 0px;
		margin: 0px;
		text-decoration: none;
		font-size: 50px;
	}	
	#main1,#main2,#main3,#main4 {
		display: inline-block;
		background-repeat:no-repeat;
 		background-size:300px;
		width:300px;
		height:300px;
		border-radius:100%;
		line-height:300px;
		color:black;
		font-size:30px;
		font-weight:bold;
	}
	#main1 {	
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/barcelona.jpg?raw=true);		
	}
	#main2 {
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/danang.jpg?raw=true);		
	}
	#main3 {
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/newyork.jpg?raw=true);		
	}
	#main4 {
		background-image:url(https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/sydney.jpg?raw=true);
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

<div class="jumbotron">
	<nav>
		<div>
			<ul class="login">
		        <!-- 로그인시 숨김 -->
		        <c:if test="${sessionScope.check eq null && sessionScope.staffcheck eq null }">
		        <li>
		        	<a id="side" href="${root }main/login" >로그인</a> &nbsp; &nbsp; &nbsp; &nbsp;
		        	<a id="side" href="${root }main/admin" >회원가입</a>
		        </li>
		        </c:if>
		        <!-- 직원로그인시 -->
		        <c:if test="${sessionScope.staffcheck ne null }">
				<select id="side" onchange="location.href=this.value">
		            <option value="${root }main/staffinfo">내정보관리</option>
		            <option value="${root }main/logout">로그아웃</option>
		        </select>
		        </c:if>
		        <!-- 회원로그인시 -->
		        <c:if test="${sessionScope.check ne null }">
				<select id="side" onchange="location.href=this.value">
					<option id="hide">${sessionScope.check.client_nick1} 님<span class="caret"></span></option>
		            <option value="${root }main/message" style="background:rgba(0,0,0,0);">쪽지함</option>
		            <option value="#">최근본상품</option>
		            <option value="${root }main/wish">찜한상품</option>
		            <option value="#">결제상품</option>
		            <option value="${root }main/myBoard">내가쓴글</option>
		            <option value="${root }main/myinfo">내정보관리</option>
		            <option value="${root }main/logout">로그아웃</option>
		          </select>
		        </c:if>
			</ul>
			<ul class="nav nav-pills nav-stacked" id="hamb">
				<li id="hamSub"><a href="#">투어</a>
			  		<ul>
			  			<li><a href="${root }tour/eastasia">중국/일본</a></li>
			       		<li><a href="${root }tour/southeastasia">동남아시아</a></li>
			       		<li><a href="${root }tour/america">아 메 리 카</a></li>
			       		<li><a href="${root }tour/europe">유 &nbsp; &nbsp; &nbsp; &nbsp;럽</a></li>
			       		<li><a href="${root }tour/pacific">남 태 평 양</a></li>
			       		<li><a href="${root }tour/africa">아 프 리 카</a></li>
			       		<li><a href="${root }tour/theme">테 마 여 행</a></li>
			  		</ul>
			  	</li>
				<li id="hamSub"><a href="#">커뮤니티</a>
					<ul>
			  			<li><a href="${root }board/review">여행후기</a></li>
			       		<li><a href="${root }board/partner">동행구하기</a></li>
			       		<li><a href="${root }board/free">자유게시판</a></li>
			  		</ul>
			  	</li>
				<li id="hamSub"><a href="#">이벤트</a></li>
				<li><a href="#">고객센터</a>
					<ul>
			  			<li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
				        <li><a href="${root }board/qna">자주묻는질문</a></li>
			  		</ul>
			  	</li>
			  	<c:if test="${sessionScope.staffcheck ne null }">
					<li id="hamSub"><a href="#">관리자센터</a>
						<ul>
				  			<li><a href="${root }system/staff">직원 관리</a></li>
				       		<li><a href="${root }system/guide">가이드관리</a></li>
				       		<li><a href="${root }system/client">회원관리</a></li>
				       		<li><a href="${root }system/paid">결제관리</a></li>
				       		<li><a href="${root }system/report">신고관리</a></li>
				  		</ul>
				  	</li>
			  	</c:if>
			</ul>
		</div><!-- /.navbar-collapse -->
	</nav><!-- /.container-fluid -->
	<div>
		<button id="hambBtn"><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/menu.jpg?raw=true" width="100px" id="hambI"></button>
	</div>
	<p id="comment"><br/><br/><br/><br/><br/>떠나요<br/><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/logoC.png?raw=true" width="300px"></p>
	<div id="MainSea">
		<input type="text" class="form-control" id="keyword" name="keyword" placeholder="도시명 검색 (DB 확인후 기능 예정)">
		<a class="btn btn-default" href="#" role="button" id="searchGo">G O</a>
	</div>
</div>


	<p id="recommend">추천상품</p>

	<!-- 추천상품img -->
	<div class="mainimg">
      	<a href="#"><div id="main1"><p id="maintext1">바르셀로나</p></div></a>
      	<a href="#"><div id="main2"><p id="maintext2">다낭</p></div></a>
     	<a href="#"><div id="main3"><p id="maintext3">뉴욕</p></div></a>
      	<a href="#"><div id="main4"><p id="maintext4">시드니</p></div></a>
     </div>

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