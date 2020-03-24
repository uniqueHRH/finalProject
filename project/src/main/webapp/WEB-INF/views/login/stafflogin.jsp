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
   .container{
      display: inline-block;
      font-family: 'Jua';
      text-align: center;
     
    }
    #loginbar{
    	width: 600px;
    	margin: 0px auto;
    	padding-bottom: 30px;
    }
    .form-horizontal {
       width:450px;
      margin: 0 auto;
    }
   
    #loginbtn{
       margin: 0px auto;
       text-align:center;
       width: 90%;
    }
    #idd,#pww {
       display:inline block;
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
<!-- menubar end -->
                     <!-- contents start -->
   <div class="container">
  <div class="row">
   <div class="col-md-12">
      <div class="page-header" align="center">
     <h1>로그인</h1>
   </div>
   			<!-- loginbar start-->
   <ul class="nav nav-tabs nav-justified" id="loginbar">
 	 <li role="presentation"><a href="${root }main/login">회원로그인</a></li>
  	<li role="presentation" class="active"><a href="${root }main/stafflogin">직원로그인</a></li>
	</ul>
  			 <!-- loginbar end -->
      
   	<!-- 직원로그인start -->
   <form class="form-horizontal" method="post">
     <div class="form-group" id="insertid">
       <label for="staff_no" class="col-sm-2 control-label" id="idd">사번</label>
       <div class="col-sm-10">
         <input type="text" class="form-control" id=staff_no" name="staff_no" placeholder="사번을 입력하세요" style="width:350px">
       </div>
     </div>
     <div class="form-group">
       <label for="staff_pw" class="col-sm-2 control-label" pw="pww">비밀번호</label>
       <div class="col-sm-10">
         <input type="password" class="form-control" id="staff_pw" name="staff_pw" placeholder="비밀번호를 입력하세요" style="width:350px">
       </div>
     </div>
     <c:if test="${msg == 'fail' }">
     	<div style="color: red">
     		사번과 비밀번호를 확인해주세요
     	</div>
     </c:if>
     <button type="submit" id="loginbtn" class="btn btn-default btn-lg btn-block">로그인</button>
     </form>
     
     
     								<!-- 직원로그인 end -->   
     </div>
  </div>
</div>
      
                         <!-- contents end --> 
 <div class="row">
   <div class="col-md-12">
    <div class="footer">
    	<img id="footer1" src="https://github.com/uniqueHRH/travel/blob/master/src/main/webapp/imgs/footer1.jpg?raw=true" alt="">
    </div>
   </div>
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
