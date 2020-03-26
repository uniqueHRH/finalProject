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
<link rel="stylesheet" type="text/css" href="${root }css/boardWrite.css" />

<style type="text/css">
	
</style>
</head>
<body>
<div class="container">
  <div class="row">
   <div class="col-md-12">
   <!-- menubar start -->
<div class="menubar">
	<nav>
		<div>
			<div align="right">
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
				<li id="hamSub"><a href="${root }board/event">이벤트</a></li>
				<li><a href="#">고객센터</a>
					<ul>
			  			<li><a href="${root }board/notice">공 &nbsp; &nbsp; &nbsp; &nbsp;지</a></li>
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
</div>



<!-- contents start -->
      <div class="page-header" id="page-header" align="center">
     <h1>INSERT</h1>
   </div>
      
<!-- 나라 선택 -->
<form class="form-inline" method="POST" enctype="multipart/form-data">
<!-- 입력 -->
	<div class="form-group">
		<p></p>
		<label for="exampleInputName2">&nbsp; 제 목</label>
		<input type="text" class="form-control" id="board_sub" name="partner_sub" style="width:613px;">
		<input type="hidden" id="client_nick1" name="client_nick1" value="${sessionScope.check.client_nick1}">
	</div>
	<div><p></p>
		&nbsp; <textarea class="form-control" id="board_content" name="partner_content" style="width:650px; height:300px;"></textarea>
	</div>
	<p></p>
<!-- file upload -->
	<div class="upload">
		<label for="board_img">이미지</label>
		<input type="file" id="board_img" name="file" />
		<div class="board_img"><img src=""/></div>
		
		<%=request.getRealPath("/") %>
	</div>

<!-- 버튼 -->
	<p></p>
	<p align="center">
	  <button type="submit" class="btn btn-default" id="subm">작성완료</button>
	  <button type="button" class="btn btn-default" id="btn2">취 &nbsp; &nbsp;소</button>
	</p>
</form>

      
      </div>
   </div>
</div>


<!-- contents end -->
     
   <div class="footer">
    	<img id="footer1" src="https://github.com/uniqueHRH/travel/blob/master/src/main/webapp/imgs/footer1.jpg?raw=true" alt="">
    </div>
</body>

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

		// 파일업로드
		$('#board_img').change(function(){
			if(this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$('.board_img img').attr('src', data.target.result).width(200);        
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		// 뒤로 버튼
		$('#btn2').on('click',function() {
			if(confirm('작성을 취소하시겠습니까?')) {
				location.href="../board/partner";
			}
		});
	});
	
</script>

</html>