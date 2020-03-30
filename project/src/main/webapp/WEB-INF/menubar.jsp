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
		top:30;
		left:700;
		width:350px;
	}
	
	/* 메뉴바 */
	#top1 {
		height:110px;
		font-family: 'Jua';
	}
	#top2 {
		background-color:141414;
		height:110px;
		line-height:30px;
	}
	#top3 {
		position:fixed;
		font-size:17px;
		font-family: 'Jua';
		background-color:141414;
		width:260px;
		height:1000px;
		text-align:center;
		list-style:none;
	}
/* 메뉴 */
	#tourM, #boardM, #serviceM, #eventM, #systemM {
		font-size:23px;
		text-align:center;
		color:white;
		padding:15 70;
		border-bottom:1px solid #e8e8e8;
		cursor:pointer;
	}
	#tourM {
		padding:50 0 15 0;
	}
/* 하위 메뉴 */
	#menubar>div>a {
		padding:20 80;
		font-size:18px;
		color:white;
		text-decoration:none;
	}
	#tourS, #boardS, #serviceS, #systemS {
		background-color:#0F0F0F;
	}
	#menubar>div>a:hover {
		background-color:#e8e8e8;
		font-weight:bold;
		font-size:20px;
		color:black;
	}
	#login {
		padding:0 30 0 0;
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
				        <c:if test="${sessionScope.staffcheck ne null }">
					        <li class="dropdown">
					        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.staffcheck.staff_name} 님<span class="caret"></span></a>
					        	<ul class="dropdown-menu" role="menu">
					        		<li><a href="${root }main/staffinfo">내정보관리</a></li>
				            		<li><a href="${root }main/logout">로그아웃</a></li>
					        	</ul>
							</li>
				        </c:if>
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
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	
	
	<div id="top3">
		<div id="menubar">
	        <li id="tourM">투&nbsp; &nbsp; &nbsp;어</li>
        	<div id="tourS">
			    <a href="${root }tour/eastasia">중국 /일본</a>
			    <a href="${root }tour/southeastasia">동남아시아</a>
		    	<a href="${root }tour/america">아 메 리 카</a>
	    		<a href="${root }tour/europe">유 &nbsp; &nbsp; &nbsp; &nbsp;럽</a>
	       		<a href="${root }tour/pacific">남 태 평 양</a>
	       		<a href="${root }tour/africa">아 프 리 카</a>
	       		<a href="${root }tour/theme">테 마 여 행</a>
	       	</div>
	        <li id="boardM">커뮤니티</li>
        	<div id="boardS">
	            <a href="${root }board/review">여행 후기</a>
	            <a href="${root }board/partner">동행구하기</a>
	       		<a href="${root }board/free">자유게시판</a>
		        <a href="${root }board/event">이 &nbsp;벤 &nbsp;트</a>
	       	</div>
	       	<a href="${root }board/event"><li id="eventM">이벤트</li></a>
	        <li id="serviceM">고객센터</li>
        	<div id="serviceS">
	            <a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp;지</a>
			    <a href="${root }board/qna">자주묻는질문</a>
	       	</div>
	        
	        <c:if test="${sessionScope.staffcheck ne null }">
	        <li id="systemM">관리자센터</li>
        	<div id="systemS">
	            <a href="${root }system/staff">직원 관리</a>
	       		<a href="${root }system/guide">가이드관리</a>
	       		<a href="${root }system/client">회원 관리</a>
	       		<a href="${root }system/paid">결제 관리</a>
	       		<a href="${root }system/report">신고 관리</a>
	       	</div>
	        </c:if>
		</div>
	</div>
</div>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#tourS').hide();
		$('#boardS').hide();
		$('#serviceS').hide();
		$('#systemS').hide();
		
		$('#tourM').on('click',function() {
			$('#tourS').toggle();
		});
		$('#boardM').on('click',function() {
			$('#boardS').toggle();
		});
		$('#serviceM').on('click',function() {
			$('#serviceS').toggle();
		});
		$('#systemM').on('click',function() {
			$('#systemS').toggle();
		});
		
	});
</script>
</body>
</html>