<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" %>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<title>DETAIL</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />
<link rel="stylesheet" type="text/css" href="${root }css/boardUpdate.css" />
<style type="text/css">

</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
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
     <h1>UPDATE</h1>
   </div>
      
<!-- 제목 -->
<form class="form-inline" method="POST" enctype="multipart/form-data">
	<div>
		<input type="text" class="form-control" id="board_sub" name="free_sub" value="${bean.free_sub }">
		<input type="hidden" id="board_no" name="board_no" value="${bean.board_no }">
	</div>
	<p></p>
	<div class="form-group">
		<label for="exampleInputName2">닉네임</label>
		<input type="text" class="form-control" id="client_nick1" name="client_nick1" value="${bean.client_nick1 }" style="cursor:default" disabled>
	</div>
	<div class="form-group">
	&nbsp; &nbsp;
		<label for="exampleInputEmail2">작성일</label>
		<input type="email" class="form-control" id="board_date" name="free_date" value="${bean.free_date }" style="cursor:default" disabled>
	</div>
	<div class="form-group">
	&nbsp; &nbsp;
		<label for="exampleInputEmail2">조회수</label>
		<input type="email" class="form-control" id="board_count" name="free_count" value="${bean.free_count }" style="cursor:default" disabled>
	</div>
	<p></p>
	<div>
		<textarea class="form-control" id="board_content" name="free_content">${bean.free_content }</textarea>
	</div>
	<p></p>
<!-- 이미지 수정 -->
	<div class="upload">
		<label for="board_img">이미지</label>
		<input type="file" id="board_img" name="file" />
		<div class="board_img">
			<img src="${root }resources/${bean.free_thumb }" id="uploadI"/>
			<input type="hidden" name="free_thumb" value="${bean.free_thumb }"/>
			<input type="hidden" name="free_img" value="${bean.free_img }"/>
		</div>
		
	</div>
	<p></p>	
	
	<div id="btn">
		<button type="submit" class="btn btn-default" id="subm">수정완료</button>
		<button type="reset" class="btn btn-default" id="dele">초기화</button>
		<button type="button" class="btn btn-default" id="goList">작성취소</button>
	</div>
</form>
      
      </div>
   </div>
</div>




<!-- contents end -->
     
	<div class="footer">
    	<img id="footer1" src="data:image/jpeg;base64,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" alt="">
	</div>
</body>
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
		
		// 이미지 수정
		$('#board_img').change(function(){
			if(this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$('.board_img img').attr('src', data.target.result).width(200);        
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		// 목록버튼
		$('#goList').on('click',function() {
			var con=confirm('작성내용이 사라집니다\n그래도 돌아가시겠습니까?');
			if(con) {
				location.href="../freeDe/${bean.board_no}";
			}
		});      
   });
</script>
</html>
