<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" %>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>


<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />

<style type="text/css">
	.container{
		font-family: 'Jua';
		text-align: center;
		width: 75%;
	}
	#firstimg,#secondimg,#thirdimg{
		display: inline-block;
		width: 100%;
		height: 40%;
		margin-bottom: 30px;
		margin-top: 10px;
	}
	.thumbnail{
		border: none;
	}
	#comments{
		font-size: 20px;
		text-align: left;
	}
	
	#tourtable{		
	 	width: 600px;
		position: absolute;
		left: 60px;
		height: 150px;
		display: inline-block;
		margin: 0px;
		font-size: 20px;
		margin-top: 10px;
	}
	#bookbtn{
		width: 250px;
		position: absolute;
		right: 50px;
	}
	#course{
		position: absolute;
		font-size: 30px;
		left: 350px;
		top: 705px;
	}
	#courseimg{
		position: absolute;
		left: 70px;
		top: 780px;
	}
</style>

<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
<script type="text/javascript" src="http://map.vworld.kr/js/vworldMapInit.js.do?version=2.0&apiKey=C787B2B1-9ED8-3FBF-AFF8-ADF7BCA3B5C6"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#tour_sub').hide();
		$('#comm_sub').hide();
		$('#serv_sub').hide();
		$('#system_sub').hide();
		
		$('#mainFont1').hide();
		$('#mainFont2').hide();
		$('#mainFont3').hide();
		$('#mainFont4').hide();
	
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
		
		$('#bookbtn').click(function(){
			var check = $('#check').val();
			var check = "";
			if(!check){
				$("#bookform").attr("href", "../../main/login");
			}
			
		});
		
	});
	var map = null;
	vworld.showMode = false;
	vworld.init(
	"cont1"
	, "map-first"
	,function() {
	map = this.vmap;
	map.setBaseLayer(map.vworldBaseMap);
	map.setControlsType({"simpleMap":true});
	map.setCenterAndZoom(14134975.826087, 4519054.8257785, 14);
	}
	,function (obj){SOPPlugin = obj; }
	,function (msg){alert('oh my god');}
	);
	function setModeCallback(){
	vworld.setModeCallback(modecallback);
	}
	
	
	
</script>
</head>
<body>
											<!-- menubar start -->
	<nav class="navbar navbar-primary">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/menubar.png?raw=true" width=40px, height=40px/></a>
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
			<a href="${root }"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/logoB.png?raw=true" width=80px></a>
	      <ul class="nav navbar-nav navbar-right">
	        <!-- 로그인시 숨김 -->
	        <c:if test="${sessionScope.check eq null && sessionScope.staffcheck eq null }">
	        <li><a id="side" href="${root }main/login" >로그인</a></li>
	        <li><a id="side" href="${root }main/admin" >회원가입</a></li>
	        </c:if>
	        <!-- 직원로그인시 -->
	        <c:if test="${sessionScope.staffcheck ne null }">
	        <li class="log">${sessionScope.staffcheck.staff_name}님 환영합니다</li>
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
			<li class="log">${sessionScope.check.client_nick1}님 환영합니다</li>
	        <li class="dropdown">
	          <a id="side" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">나의페이지<span class="caret"></span></a>
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
<div class="container">     
 <div class="row">
	<div class="col-md-12">
		<div class="page-header" align="center">
	  <h1>${bean.country }(${bean.city })</h1>
 </div>
	<!-- contenets start -->
  <p id="comments">여행의 포인트 : ${bean.comments }</p>	
	<!-- img넣기 -->
	
	<div class="row">
  <div class="col-xs-6 col-md-4" id="thumbnail">
    <class="thumbnail">
      <img id="firstimg" src="${bean.firstimg }">
    
  </div>
  <div class="col-xs-6 col-md-4" id="thumbnail">
    <class="thumbnail">
      <img id="secondimg" src="${bean.secondimg }">
    
  </div>
  <div class="col-xs-6 col-md-4" id="thumbnail">
    <class="thumbnail">
      <img id="thirdimg" src="${bean.thirdimg }" >
    
  </div>
		<!-- img end -->
		
		
  			<div style="padding-top: 100px;"><h1>여행정보</h1></div>
  			
  	
 	<table class="table table-condensed" id="tourtable">
		<tr>
			<td class="active" style="text-align: center; width: 150px">여행도시</td>
			<td style="width: 200px;">${bean.city }</td>
			<td class="active" style="text-align: center; width: 150px">최소출발인원</td>
			<td width="200px;">1명</td>
		</tr>
		<tr>
			<td class="active" style="text-align: center;">투어일</td>
			<td>매일</td>
			<td class="active" style="text-align: center;">가이드</td>
			<td>포함(${bean.guideVo.guide_name } 가이드)</td>
		</tr>
		<tr>
			<td class="active" style="text-align: center;">차량</td>
			<td>포함</td>
			<td class="active" style="text-align: center;">상품가</td>
			<td>${bean.cost }원</td>
			<td><input type="hidden" id="check" value="${sessionScope.check.client_nick1}"></td>
		</tr>
		</table>
	<a id="bookform" href="${root }tour/eastasia/${bean.tour_no}/booking"><button type="button" id="bookbtn" class="btn btn-default btn-lg">예약하기</button></a>
	
		<div id="cont1" style="width:500px;bvheight:500px;"></div>
		
		<p id="course"> <여행일정> </p>
		<div id="courseimg">
		<img src="${bean.course }">
		</div>
	</div>
  </div>
 </div>
</div>
 <div class="row">
	<div class="col-md-12">
    <div class="footer">
    	
    </div>
   </div>
 </div> 
</body>
</html>