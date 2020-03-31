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
	}
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
		padding:35 220 0 450;
	}
	#menubar>li {
		padding:0 20px 0 0;
		text-align:center;
	}
	#menubar>li>a {
		font-size:20px;
		font-weight:bold;
		color:white;
		padding:20 50;
		text-align:center;
	}
	#menubar li>ul>li>a {
		font-size:15px;
		color:black;
	}
	#login {
		font-size:16px;
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
		padding:500 0 0 0;
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
/* footer*/
	#footer{
		width: 1800px;
		font-family:"Jua";
		font-size: 15px;
		color: silver;
		margin-bottom: 0px;
		padding-bottom: 0px;
		float: right;
	}
	#footer1{
		padding-top: 20px;
		padding-left: 380px;
	}
	#footer2{
		margin-top: 10px;
		padding-left: 380px;
	}
	#footer3{
		padding-top: 23px;
		padding-left: 380px;
		padding-bottom: 20px;
	}

</style>
</head>
<body>
<div class="jumbotron">
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
					        <c:if test="${sessionScope.check eq null and sessionScope.staffcheck ne null }">
					        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.staffcheck.staff_name} 님<span class="caret"></span></a>
					        	<ul class="dropdown-menu" role="menu">
					        		<li><a href="${root }main/staffinfo">내정보관리</a></li>
				            		<li><a href="${root }main/logout">로그아웃</a></li>
					        	</ul>
					        </c:if>
						</li>
				        <!-- 회원로그인시 -->
				        <c:if test="${sessionScope.staffcheck eq null and sessionScope.check ne null }">
				        <input type="hidden" id="session" value="${sessionScope.check.client_nick1}"/>
					        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.check.client_nick1} 님<span class="caret"></span></a>
					        	<ul class="dropdown-menu" role="menu">
					        		<li><a href="${root }main/message" id="msg">쪽지함</a></li>
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
				        <li class="dropdown"><a href="${root }board/event">이벤트</li></a>
				        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">고객센터</a>
							<ul class="dropdown-menu" role="menu">
					            <li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
							    <li><a href="${root }board/faq">자주묻는질문</a></li>
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
	</div>
	
<!-- footer -->
<div id="footer">
<hr style="border: solid 1px silver;">
	<div id="footer1">
	상호명 (주)여행사용설명서 | 대표 정지문 | 개인정보보호책임자 홍혜리 | 사업자등록번호 100-00-00000 사업자정보확인 | 통신판매업신고번호 2020-서울강남-0000
	</div>
	<div id="footer2">
	주소 서울특별시 서초구 강남대로 459 | 이메일 help@tripinstruction.com | 마케팅/제휴 문의 marketing@tripinstruction.com
	</div>
	<div id="footer3">
	자사는 서울특별시관광협회 공제영업보증보험에 가입되어 있습니다. 여행사용설명서는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품·거래정보 및 거래에 대하여 책임을 지지않습니다.
	</div>
</div>
<!-- footer end -->
	
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// session 정보
		$('#msg').on('click',function() {
			var id=$('#session').val();
			console.log(id);
			
			$.ajax({
				url:'../project/main/message',
				type:'GET',
				data:{client_nick2:id},
				success:function() {
				},
				error:function() {
					alert('실패');
				}
			});
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