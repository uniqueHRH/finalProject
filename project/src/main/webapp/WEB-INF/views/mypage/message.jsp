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
	h1 {
		font-family: 'Jua';
	}
	#table {
      width:700px;      
      margin:0 auto;
      font-family: 'Jua';
      font-size:18px;
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
   #deletebtn{
		font-family: 'Jua';
   		display: inline-block;
   		position: relative;
   		left: 740px;
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
   #table>thead th:nth-child(3) {
      width:400px;
      text-align: center;
   }
  #pageNum{
  		text-align: center;
  }
   
</style>
</head>
<body>
   <!-- menubar start -->
<div class="menubar">
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
		            <option value="${root }main/message">쪽지함</option>
		            <option value="#">최근본상품</option>
		            <option value="${root }main/wish">찜한상품</option>
		            <option value="#">결제상품</option>
		            <option value="#">내가쓴글</option>
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
</div>


<!-- contents start -->
<div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" id="page-header" align="center">
     <h1>쪽지함</h1>
   </div>

	<button type="button" id="receivebtn" class="btn btn-default">수신함</button>
	<button type="button" id="sendbtn" class="btn btn-default">발신함</button>
   <button type="button" id="deletebtn" class="btn btn-default">삭제</button>
  
</div>

<!-- 리스트 출력 -->
<table class="table table-hover" id="table">
   <thead>
      <tr class="active">
      	 <th>/</th>
         <th>n</th>
         <th>제 목</th>
         <th>글쓴이</th>
         <th>날 짜</th>
      </tr>
   </thead>
   <tbody>
      <tr>
      	 <td><input type="checkbox" id="inlineCheckbox1" value="option1"></td>
         <td>4</td>
         <td>제목입니다</td>
         <td>홍길동</td>
         <td>2020-03-05</td>
      </tr>
      <tr>
      	 <td><input type="checkbox" id="inlineCheckbox1" value="option1"></td>
         <td>3</td>
         <td>제목입니다</td>
         <td>홍길동</td>
         <td>2020-03-05</td>
      </tr>
      <tr>
      	 <td><input type="checkbox" id="inlineCheckbox1" value="option1"></td>
         <td>2</td>
         <td>제목입니다</td>
         <td>홍길동</td>
         <td>2020-03-05</td>
      </tr>
      <tr>
      	 <td><input type="checkbox" id="inlineCheckbox1" value="option1"></td>
         <td>1</td>
         <td>제목입니다</td>
         <td>홍길동</td>
         <td>2020-03-05</td>
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
        
      <input type="text" class="form-control" id="client_id" name="client_id" style="width:200px; display:inline-block;">
      <a class="btn btn-default" href="#" role="button">검색</a>
   </div>
</nav>      
      </div>
   </div>

                                    <!-- contents end -->
     
   <div class="footer">
    	<img id="footer1" src="https://github.com/uniqueHRH/travel/blob/master/src/main/webapp/imgs/footer1.jpg?raw=true" alt="">
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
      
   });
</script>
</body>
</html>