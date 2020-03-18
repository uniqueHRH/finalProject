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
   .container {
   		width: 100%;
      	display: inline-block;
      	font-family: 'Jua';
      	text-align: center;
   }
   #page-header{
   		font-family: 'Jua';
      	text-align: center;
   }
   #receivebtn,#sendbtn{
   		font-family: 'Jua';
   		display: inline-block;
   		position: relative;
   		left: 230px;
   		margin-bottom: 10px;
   }
   #registerbtn{
   font-family: 'Jua';
   		display: inline-block;
   		position: relative;
   		left: 870px;
   		margin-bottom: 10px;
   }
   #table {
      width:700px;      
      margin:0 auto;
      text-align:center;
      font-family: 'Jua';
   }
   #table>thead th{
   		text-align: center;
        font-size: 15px;
   }
   #table>thead th:nth-child(2) {
      width:200px;
      text-align: center;
   }
  #pageNum, #search {
      width:320px;      
      margin:0 auto;
      text-align:center;
   }
  .dropdown {
      font-family: 'Jua';
      font-size: 18px;
   }
   
</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
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
      
   });
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
	          </ul>
	        </li>
	      </ul>
		<div align="center" style="disply:inline-block;">
			<a href="${root }"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/logoA.png?raw=true" width=130px></a>
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
	          <a id="side" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.check.client_nick1}님<span class="caret"></span></a>
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


<!-- contents start -->
<div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" id="page-header" align="center">
     <h1>직원관리</h1>
   </div>
<button type="button" id="registerbtn" class="btn btn-default">등록</button>
  


<!-- 리스트 출력 -->
<table class="table table-hover" id="table">
   <thead>
      <tr class="active">
      	 <th>no</th>
         <th>투 어</th>
         <th>아이디</th>
         <th>진행상황</th>
         <th>확 정</th>
      </tr>
   </thead>
   <tbody>
      <tr>
      	 <td>1</td>
         <td>바르셀로나가우디투어</td>
         <td>c920216@naver.com</td>
         <td>확정</td>
         <td><button type="button" id="paidbtn" class="btn btn-default">등록</button></td>
      </tr>
      <tr>
      	 <td>2</td>
         <td>바르셀로나가우디투어</td>
         <td>c920216@naver.com</td>
         <td>미확정</td>
          <td><button type="button" id="paidbtn" class="btn btn-default">등록</button></td>
      </tr>
      <tr>
      	 <td>3</td>
         <td>바르셀로나가우디투어</td>
         <td>c920216@naver.com</td>
         <td>확정</td>
         <td><button type="button" id="paidbtn" class="btn btn-default">등록</button></td>
      </tr>
      <tr>
      	 <td>4</td>
         <td>바르셀로나가우디투어</td>
         <td>c920216@naver.com</td>
         <td>확정</td>
         <td><button type="button" id="paidbtn" class="btn btn-default">등록</button></td>
      </tr>
   </tbody>
</table>

<nav id="pageNum">
<!-- 페이지넘버링 -->
  <ul class="pagination">
    <li class="disabled"><a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
<!-- 검색 -->
   <div class="dropdown" id="search" style="display:block;">
      <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true"><img src="https://cdn.pixabay.com/photo/2016/03/31/19/14/magnifying-glass-1294834_960_720.png" style="width:20px;"><span class="caret"></span></button>
        	<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
             <li role="presentation"><a role="menuitem" tabindex="-1" href="#">이름별</a></li>
             <li role="presentation"><a role="menuitem" tabindex="-1" href="#">확정별</a></li>
         </ul>
         
      <input type="text" class="form-control" id="client_id" name="client_id" style="width:200px; display:inline-block;">
      <a class="btn btn-default" href="#" role="button">검색</a>
   </div>
</nav>      
      </div>
   </div>
</div>
                                    <!-- contents end -->
     
   <div class="footer">
    	<img id="footer1" src="https://github.com/uniqueHRH/travel/blob/master/src/main/webapp/imgs/footer1.jpg?raw=true" alt="">
    </div>
</body>
</html>