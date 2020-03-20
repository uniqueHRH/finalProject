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
		background-image:url("https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/background.jpg?raw=true");
		background-size: cover;
		width: 100%;
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
		background-image:url(https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/barcelona.jpg?raw=true);		
	}
	#main2 {
		background-image:url(https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/danang.jpg?raw=true);		
	}
	#main3 {
		background-image:url(https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/newyork.jpg?raw=true);		
	}
	#main4 {
		background-image:url(https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/sydney.jpg?raw=true);
	}
	
</style>
</head>
<body>






<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>



<div>
	<button id="hambBtn">버어튼</button>
</div>





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
	<li id="hamSub"><a href="#">관리자센터</a>
		<ul>
  			<li><a href="${root }system/staff">직원 관리</a></li>
       		<li><a href="${root }system/guide">가이드관리</a></li>
       		<li><a href="${root }system/client">회원관리</a></li>
       		<li><a href="${root }system/paid">결제관리</a></li>
       		<li><a href="${root }system/report">신고관리</a></li>
  		</ul>
  	</li>
</ul>













<div class="jumbotron">
	<nav class="navbar navbar-primary">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav nav-pils nav-stacked">
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"></a>
	          <ul class="dropdown-menu" role="menu">
	            <li id="tour"><a href="#">투어</a>
	            	<ul id="tour_sub">
	            		<li><a href="${root }tour/eastasia">중국/일본</a></li>
	            		<li><a href="${root }tour/southeastasia">동남아시아</a></li>
	            		<li><a href="${root }tour/america">아 메 리 카</a></li>
	            		<li><a href="${root }tour/europe">유 &nbsp; &nbsp; &nbsp; &nbsp;럽</a></li>
	            		<li><a href="${root }tour/pacific">남 태 평 양</a></li>
	            		<li><a href="${root }tour/africa">아 프 리 카</a></li>
	            		<li><a href="${root }tour/theme">테 마 여 행</a></li>
	            	</ul>
	            </li>
	            <li class="divider"></li>
	            <li id="comm"><a href="#">커뮤니티</a>
		            <ul id="comm_sub">
	            		<li><a href="${root }board/review">여행후기</a></li>
	            		<li><a href="${root }board/partner">동행구하기</a></li>
	            		<li><a href="${root }board/free">자유게시판</a></li>
	            	</ul>
            	</li>
	            <li class="divider"></li>
	            <li><a id="event"href="${root }board/event">이벤트</a></li>
	            <li class="divider"></li>
	            <li id="serv"><a href="#">고객센터</a>
	            	<ul id="serv_sub">
	            		<li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
	            		<li><a href="${root }board/qna">자주묻는질문</a></li>
	            	</ul>
	            </li>
	            <c:if test="${sessionScope.staffcheck ne null }">
	            <li class="divider"></li>
	            <li id="system"><a href="#">시스템관리</a>
	            	<ul id="system_sub">
	            		<li><a href="${root }system/staff">직원 관리</a></li>
	            		<li><a href="${root }system/guide">가이드관리</a></li>
	            		<li><a href="${root }system/client">회원관리</a></li>
	            		<li><a href="${root }system/paid">결제관리</a></li>
	            		<li><a href="${root }system/report">신고관리</a></li>
	            	</ul>
	            </li>
	            </c:if>
	          </ul>
	        </li>
	      </ul>
		<div align="center" style="disply:inline-block;">
			<a href="${root }"><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/Mlogo.png?raw=true" width=130px></a>
	      <ul class="nav navbar-nav navbar-right">
	        <!-- 로그인시 숨김 -->
	        <c:if test="${sessionScope.check eq null && sessionScope.staffcheck eq null }">
	        <li><a id="side" href="${root }main/login" >로그인</a></li>
	        <li><a id="side" href="${root }main/admin" >회원가입</a></li>
	        </c:if>
	        <!-- 직원로그인시 -->
	        <c:if test="${sessionScope.staffcheck ne null }">
	        <li class="dropdown">
	          <a id="side" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">나의페이지<span class="caret"></span></a>
	          <ul class="dropdown-menu" id="dropdown_sub" role="menu">
	            <li><a href="${root }main/staffinfo">내정보관리</a></li>
	            <li><a href="${root }main/logout">로그아웃</a></li>
	          </ul>
	        </li>
	        </c:if>
	        <!-- 회원로그인시 -->
	        <c:if test="${sessionScope.check ne null }">
	        <li class="dropdown">
	          <a id="side" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.check.client_nick1} 님<span class="caret"></span></a>
	          <ul class="dropdown-menu" id="dropdown_sub" role="menu">
	            <li><a href="${root }main/message">쪽지함</a></li>
	            <li class="divider"></li>
	            <li><a href="#">최근본상품</a></li>
	            <li><a href="${root }main/wish">찜한상품</a></li>
	            <li><a href="#">결제상품</a></li>
	            <li class="divider"></li>
	            <li><a href="#">내가쓴글</a></li>
	            <li class="divider"></li>
	            <li><a href="${root }main/myinfo">내정보관리</a></li>
	            <li><a href="${root }main/logout">로그아웃</a></li>
	          </ul>
	        </li>
	        </c:if>
	      </ul>
		</div>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<p id="comment"><br/><br/><br/><br/><br/>(회사로고 또는 이름)<br/>문구 생각해주세요~~<br/><br/><br/></p>

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
			$('#hambBtn').hide();
		});
		$('#hamb').mouseleave(function() {
			$('#hamb').hide();
			$('#hambBtn').show();
		});
		
		$('#tour').mouseenter(function() {
			$('#tour_sub').show();
		}).mouseleave(function() {
			$('#tour_sub').hide();
		});
		$('#comm').mouseenter(function() {
			$('#comm_sub').show();
		}).mouseleave(function() {
			$('#comm_sub').hide();
		});
		$('#serv').mouseenter(function() {
			$('#serv_sub').show();
		}).mouseleave(function() {
			$('#serv_sub').hide();
		});
		$('#system').mouseenter(function() {
			$('#system_sub').show();
		}).mouseleave(function() {
			$('#system_sub').hide();
		});
		
		$('#main1').mouseover(function(){
			$('#main1').css("opacity",0.3);
			$('#maintext1').show();
		}).mouseleave(function() {
			$('#main1').css('opacity',1)
			$('#maintext1').hide();
		});
		$('#main2').mouseover(function(){
			$('#main2').css('opacity',0.3);
			$('#maintext2').show();
		}).mouseleave(function() {
			$('#main2').css('opacity',1)
			$('#maintext2').hide();
		});
		$('#main3').mouseover(function(){
			$('#main3').css('opacity',0.3);
			$('#maintext3').show();
		}).mouseleave(function() {
			$('#main3').css('opacity',1)
			$('#maintext3').hide();
		});
		$('#main4').mouseover(function(){
			$('#main4').css('opacity',0.3);
			$('#maintext4').show();
		}).mouseleave(function() {
			$('#main4').css('opacity',1)
			$('#maintext4').hide();
		});
		
		
	});
</script>
</body>
</html>