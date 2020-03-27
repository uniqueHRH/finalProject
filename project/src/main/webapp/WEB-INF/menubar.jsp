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
	#logo {
		position:fixed;
		top:25;
		width:350px;
	}
	/* 메뉴바 */
	#top1 {
		height:100px;
		font-family: 'Jua';
	}
	#top2 {
		background-color:141414;
		height:100px;
		line-height:30px;
	}
	#menubar {
		margin:0 auto;
		text-align:center;
		padding:35 270 0 500;
	}
	#menubar>li {
		padding:0 20px 0 0;
		text-align:center;
	}
	#menubar>li>a {
		font-size:20px;
		font-weight:bold;
		color:white;
		padding:20 60;
		text-align:center;
	}
	#menubar li>ul>li>a {
		font-size:15px;
		color:black;
	}
	#login {
	}
	#login li>a {
		color:white;
		padding:20;
	}
	#login li>ul>li>a {
		color:black;
		text-align:center;
	}
	body {
		padding-top:100px;
	}
</style>
</head>
<body>
<div id="mainTop">
	<nav class="navbar navbar-default navbar-fixed-top" id="top1">
		<div class="container-fluid" id="top2">
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<a href="${root }"><img src="https://github.com/uniqueHRH/final/blob/master/project/src/main/webapp/imgs/logo.png?raw=true" id="logo"></a>
				<!-- 로그인 -->
				<div id="login">
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${sessionScope.check eq null && sessionScope.staffcheck eq null }">
							<li><a href="${root }main/login">로그인</a></li>
					        <li><a href="${root }main/admin">회원가입</a></li>
			        	</c:if>
						
						<!-- 직원로그인시 -->
				        <li class="dropdown">
					        <c:if test="${sessionScope.staffcheck ne null }">
					        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">내정보관리<span class="caret"></span></a>
					        	<ul class="dropdown-menu" role="menu">
					        		<li><a href="${root }main/staffinfo">내정보관리</a></li>
				            		<li><a href="${root }main/logout">로그아웃</a></li>
					        	</ul>
					        </c:if>
						</li>
				        <!-- 회원로그인시 -->
				        <c:if test="${sessionScope.check ne null }">
					        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.check.client_nick1} 님<span class="caret"></span></a>
					        	<ul class="dropdown-menu" role="menu">
					        		<li><a href="${root }main/message">쪽지함</a></li>
					        		<li><a href="#">최근본상품</a></li>
					        		<li><a href="${root }main/wish">찜한상품</a></li>
					        		<li><a href="#">결제상품</a></li>
					        		<li><a href="#">내가쓴글</a></li>
					        		<li><a href="${root }main/myinfo">내정보관리</a></li>
					        		<li><a href="${root }main/logout">로그아웃</a></li>
					        	</ul>
							</li>
						</c:if>
					</ul>
				</div>
				<div id="top3" align="center">
					<!-- 메뉴바 -->
					<ul class="nav navbar-nav" id="menubar">
				        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">투&nbsp; &nbsp; &nbsp;어</a>
							<ul class="dropdown-menu" role="menu">
					            <li><a href="${root }tour/eastasia">중국/일본</a></li>
					       		<li><a href="${root }tour/southeastasia">동남아시아</a></li>
					       		<li><a href="${root }tour/america">아 메 리 카</a></li>
					       		<li><a href="${root }tour/europe">유 &nbsp; &nbsp; &nbsp; &nbsp;럽</a></li>
					       		<li><a href="${root }tour/pacific">남 태 평 양</a></li>
					       		<li><a href="${root }tour/africa">아 프 리 카</a></li>
					       		<li><a href="${root }tour/theme">테 마 여 행</a></li>
							</ul>
				        </li>
				        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">커뮤니티</a>
							<ul class="dropdown-menu" role="menu">
					            <li><a href="${root }board/review">여행후기</a></li>
					       		<li><a href="${root }board/partner">동행구하기</a></li>
					       		<li><a href="${root }board/free">자유게시판</a></li>
							</ul>
				        </li>
				        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 이벤트 </a></li>
				        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">고객센터</a>
							<ul class="dropdown-menu" role="menu">
					            <li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
							    <li><a href="${root }board/qna">자주묻는질문</a></li>
							</ul>
				        </li>
				        <c:if test="${sessionScope.staffcheck ne null }">
					        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">관리자센터</a>
								<ul class="dropdown-menu" role="menu">
						            <li><a href="${root }system/staff">직원 관리</a></li>
						       		<li><a href="${root }system/guide">가이드관리</a></li>
						       		<li><a href="${root }system/client">회원관리</a></li>
						       		<li><a href="${root }system/paid">결제관리</a></li>
						       		<li><a href="${root }system/report">신고관리</a></li>
								</ul>
					        </li>
				        </c:if>
					</ul>
				</div>   <!-- 메뉴바 -->
				
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
</div>
</body>
</html>