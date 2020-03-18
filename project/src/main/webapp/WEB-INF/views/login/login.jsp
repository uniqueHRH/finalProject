<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="utf-8" %>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua|Noto+Sans+KR&display=swap" rel="stylesheet">
<c:url value="/" var="root"></c:url>
<html>
<head>
<meta charset="utf-8">
<!-- 카카오 API -->
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

<title>Login</title>
<link rel="stylesheet" type="text/css" href="${root }css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${root }css/travel.css" />
<!-- 카카오 API -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
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
    #findid,#findpw{
       margin-top: 20px;
       width: 20%;
    }
    #loginbtn{
       margin: 0px auto;
       text-align:center;
       width: 90%;
    }
    #idd,#pww {
       display:inline block;
    }
    #facebookbtn,#naverbtn {
       margin: 0px auto;
       text-align:center;
       width: 40%;
    }
</style>
<script type="text/javascript" src="${root }js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${root }js/bootstrap.js"></script>
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
	          </ul>
	        </li>
	      </ul>
		<div align="center" style="disply:inline-block;">
			<a href="${root }"><img src="https://github.com/uniqueHRH/travel/blob/master/travel/src/main/webapp/imgs/logoB.png?raw=true" width=80px></a>
	      <ul class="nav navbar-nav navbar-right">
	        <!-- 로그인시 숨김 -->
	        <li><a id="side" href="${root }main/login" >로그인</a></li>
	        <li><a id="side" href="${root }main/admin" >회원가입</a></li>
	      </ul>
		</div>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
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
				<li role="presentation" class="active"><a href="${root }main/login">회원로그인</a></li>
			  	<li role="presentation"><a href="${root }main/stafflogin">직원로그인</a></li>
			</ul>
<!-- loginbar end -->
      
<!-- 고객로그인start -->
			<form class="form-horizontal" method="post">
				<div class="form-group" id="insertid">
					<label for="client_name" class="col-sm-2 control-label" id="idd">아이디</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="client_id" name="client_id" placeholder="아이디를 입력하세요" style="width:350px">
					</div>
				</div>
				<div class="form-group">
					<label for="client_pw" class="col-sm-2 control-label" id="pww">비밀번호</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="client_pw" name="client_pw" placeholder="비밀번호를 입력하세요" style="width:350px">
					</div>
				</div>
				<c:if test="${msg == 'fail' }">
		     		<div style="color:red">아이디와 비밀번호를 확인해주세요</div>
				</c:if>
				<button type="submit" id="loginbtn" class="btn btn-default btn-lg btn-block">로그인</button>
			</form>
			<div>
				<a href="${root }main/login/findid"><button type="button" id="findid" class="btn btn-default btn-lg">아이디 찾기</button></a>
				<a href="${root }main/login/findpw"><button type="button" id="findpw" class="btn btn-default btn-lg">비밀번호 찾기</button></a>
			</div>
			<p><p>--------------------------------------또는--------------------------------------</p></p>
			<p>
				<a id="kakao-login-btn"></a>
				<a href="http://developers.kakao.com/logout"></a>
			</p>
		     <p>
		        <button type="button" id="facebookbtn" class="btn btn-default btn-lg btn-block">페이스북으로 로그인</button>
		    </p>
		     <p>
		        <button type="button" id="naverbtn" class="btn btn-default btn-lg btn-block">네이버로 로그인</button>
		     </p>
		</div>
<!-- 고객로그인 end -->   
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
</body>
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
   
   
	// 카카오 로그인
	Kakao.init('acc658a670e9ed5918d11647040b5bc5');
	Kakao.Auth.createLoginButton({
	      container: '#kakao-login-btn',
	      success: function(authObj) {
	        alert(JSON.stringify(authObj));
	      },
	      fail: function(err) {
	         alert(JSON.stringify(err));
	      }
	    });
	
	
	
	});
	
</script>
</html>
